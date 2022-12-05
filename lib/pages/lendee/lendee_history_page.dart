import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:uome/application/lendee/lendee_application.dart';
import 'package:uome/application/sms/sms_application.dart';
import 'package:uome/application/user/user_application.dart';
import 'package:uome/core/helper/helpers.dart';
import 'package:uome/core/ui/snackbar.dart';
import 'package:uome/pages/lendee/widgets/lendee_list_history.dart';
import 'package:uome/providers/lendee_provider.dart';
import 'package:uome/providers/sms_provider.dart';
import 'package:uome/providers/user_provider.dart';

class LendeeHistoryPage extends ConsumerWidget {
  LendeeHistoryPage({Key? key}) : super(key: key);
  final TextEditingController _nameofperson = TextEditingController();
  final TextEditingController _amount = TextEditingController();
  final TextEditingController _cellNumber = TextEditingController();
  final TextEditingController _expectedPayDate = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(lendeeNotifierProvider);
    bool _loading = false;
    ref.listen<LendeeApplication>(lendeeNotifierProvider,
        (LendeeApplication? prev, LendeeApplication next) {
      if (next is LendeeErrorDetails) {
        AppSnackBar.showSnackBar(next.message ?? "", context);
      } else if (next is LendeeDeleted) {
        AppSnackBar.showSnackBar("Record updated and will be removed", context);
        Navigator.pop(context);
      } else if (next is LendeeUpdated) {
        AppSnackBar.showSnackBar("Record updated", context);
        Navigator.pop(context);
      } else if (next is LendeeLoading) {
        _loading = true;
      }
    });

    ref.listen<UserApplication>(userNotifierProvider,
        (UserApplication? prev, UserApplication next) {
      if (next is UserSignout) {
        AppSnackBar.showSnackBar("Signed out........", context);
        Navigator.pop(context);
      } else if (next is UserErrorDetails) {
        AppSnackBar.showSnackBar(
            next.message ?? "Error occured with user auth", context);
        Navigator.pop(context);
      }
    });
    ref.listen<SmsApplication>(smsNotifierProvider,
        (SmsApplication? prev, SmsApplication next) {
      if (next is SmsErrorDetails) {
        AppSnackBar.showSnackBar(
            "Could not send sms to  other party.", context);
        Navigator.pop(context);
      } else if (next is SmsLoaded) {
        AppSnackBar.showSnackBar("Error occured  sms ", context);
        Navigator.pop(context);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("HIstory"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            ref.read(lendeeNotifierProvider.notifier).getLendee();
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: LoadingOverlay(
        isLoading: _loading,
        child: Container(
          child: state.maybeWhen(
            dataLoadedHistory: (lendeeData) {
              return lendeeData.length > 0
                  ? LendeeListHistoryWidget(lendeeData)
                  : Center(
                      child: Text(
                        "No data Available",
                        style: TextStyle(fontSize: 20),
                      ),
                    );
            },
            loading: () => LoadingOverlay(
                isLoading: true,
                child: Center(child: CircularProgressIndicator())),
            orElse: (() => Text("Error occured")),
          ),
        ),
      ),

      /*  Column(
        children: [
          
    
              if (state is LendeeInitial) {
                return Text("intial");
              } else if (state is LendinginitialData) {
                return LendeeList(data: state.lendeeData);
              } else if (state is LendeeLoading) {
                return CircularProgressIndicator();
              } else {
                return Text("No Data");
              }
            }),*/

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Alert(
              context: context,
              title: "Who are you lending to?",
              content: Container(
                width: 400,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _nameofperson,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Enter lendee names";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          labelText: 'Name of person',
                        ),
                      ),
                      TextFormField(
                        controller: _cellNumber,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Enter cell number";
                          } else if (value[0] != "0") {
                            return "Cell number must start with 0";
                          }
                          if (value.length != 10) {
                            return "cell number must be 10 digit long";
                          } else {
                            if (!Helpers.isNumericUsingTryParse(value)) {
                              return "cell number must digit";
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          labelText: 'Cell number',
                        ),
                      ),
                      TextFormField(
                        controller: _amount,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Enter amount";
                          } else {
                            if (!Helpers.isNumericUsingTryParse(value)) {
                              return "Amount  must digit";
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          labelText: 'Amount',
                        ),
                      ),
                      TextFormField(
                        controller: _expectedPayDate,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Enter payment date";
                          } else {
                            if (DateTime.tryParse(value) == null) {
                              return "Enter payment due date";
                            }
                          }
                          return null;
                        },
                        onTap: () async {
                          DateTime date = DateTime(1900);
                          FocusScope.of(context).requestFocus(new FocusNode());

                          date = (await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2100),
                              )) ??
                              DateTime.now();
                          _expectedPayDate.text =
                              DateFormat('yyyy-MM-dd').format(date);
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: 'Expected pay date',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              buttons: [
                DialogButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      /*  final lendee = Lendee(
                          userId: "",
                          cellNumber: _cellNumber.text.replaceFirst("0", "+27"),
                          lendDate: DateTime.now(),
                          fullname: _nameofperson.text,
                          amount: double.parse(_amount.text),
                          duedate: DateFormat('yyyy-MM-dd')
                              .parse(_expectedPayDate.text),
                          status: true);*/

                      /*   await ref
                          .read(lendeeNotifierProvider.notifier)
                          .addLendee(lendee);*/
                    }
                  },
                  child: Text(
                    "SAVE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ]).show();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
