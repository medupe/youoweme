import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:wankolota/application/lendee/lendee_application.dart';
import 'package:wankolota/application/sms/sms_application.dart';
import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/core/classes/percentage_calculator.dart';
import 'package:wankolota/core/helper/helpers.dart';
import 'package:wankolota/core/ui/snackbar.dart';

import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/pages/lendee/widgets/lendee_list.dart';
import 'package:wankolota/providers/lendee_provider.dart';
import 'package:wankolota/providers/sms_provider.dart';
import 'package:wankolota/providers/user_provider.dart';

class LendeePage extends ConsumerWidget {
  LendeePage({Key? key}) : super(key: key);
  final TextEditingController _nameofperson = TextEditingController();
  final TextEditingController _amount = TextEditingController();
  final TextEditingController _cellNumber = TextEditingController();
  final TextEditingController _expectedPayDate = TextEditingController();
  final TextEditingController _interestAmount =
      TextEditingController(text: "0");
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(lendeeNotifierProvider);

    double fullamount = 0;

    bool _loading = false;
    ref.listen<LendeeApplication>(lendeeNotifierProvider,
        (LendeeApplication? prev, LendeeApplication next) {
      if (next is LendeeErrorDetails) {
        AppSnackBar.showSnackBar(next.message ?? "", context);
      } else if (next is LendeeDeleted) {
        AppSnackBar.showSnackBar("Record updated and will be removed", context);
        //   Navigator.pop(context);
      } else if (next is LendeeUpdated) {
        AppSnackBar.showSnackBar("Record updated", context);
        //   Navigator.pop(context);
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
        AppSnackBar.showSnackBar(next.message ?? "Error occured user", context);
        Navigator.pop(context);
      }
    });
    ref.listen<SmsApplication>(smsNotifierProvider,
        (SmsApplication? prev, SmsApplication next) {
      if (next is SmsErrorDetails) {
        AppSnackBar.showSnackBar(
            "Could not send sms to  other party.", context);
        //   Navigator.pop(context);
      } else if (next is SmsLoaded) {
        AppSnackBar.showSnackBar("Sms sent ", context);
        // Navigator.pop(context);
      }
    });

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home"),
        leading: IconButton(
          onPressed: () => ref.read(userNotifierProvider.notifier).signOut(),
          icon: const Icon(Icons.logout_outlined),
        ),
      ),
      body: LoadingOverlay(
        isLoading: _loading,
        child: Container(
          child: state.maybeWhen(
            loaded: (lendeeData) {
              return lendeeData.length > 0
                  ? LendeeListWidget(lendeeData)
                  : Center(
                      child: Text(
                        "No data Available",
                        style: TextStyle(fontSize: 20),
                      ),
                    );
            },
            error: (message) => LoadingOverlay(
              isLoading: false,
              child: Center(
                child: Text("unexpected errro occued"),
              ),
            ),
            loading: () => LoadingOverlay(
                isLoading: true,
                child: Center(child: CircularProgressIndicator())),
            orElse: (() => Text("Error occured2")),
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
        onPressed: () async {
          await Alert(
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
                        onChanged: (String value) {
                          if (Helpers.isNumericUsingTryParse(value) &&
                              value != "") {
                            ref.read(amountNotifer.state).state =
                                double.parse(value);
                          }
                        },
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
                        controller: _interestAmount,
                        onChanged: (String value) {
                          String decodeString = value == "" ? "0" : value;
                          if (Helpers.isNumericUsingTryParse(decodeString)) {
                            ref.read(interestNotifer.state).state =
                                double.parse(value);
                            //    final b = ref.read(a.state).state = value;
                          }
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty || value == "") {
                            return "Enter interest amount";
                          } else {
                            if (!Helpers.isNumericUsingTryParse(value)) {
                              return "interest   must digit";
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          labelText: 'Interest rate',
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
                      Consumer(builder: (context, ref2, _) {
                        return Text("Final amount: " +
                            ref2
                                .watch(calculateInterestProvider.state)
                                .state
                                .toStringAsFixed(2));
                      }),
                    ],
                  ),
                ),
              ),
              buttons: [
                DialogButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final lendee = Lendee(
                          interestRate: double.parse(_interestAmount.text),
                          finalAmount: double.parse(_amount.text) +
                              (double.parse(_amount.text) *
                                  (double.parse(_interestAmount.text) / 100)),
                          userId: "",
                          cellNumber: _cellNumber.text.replaceFirst("0", "+27"),
                          lendDate: DateTime.now(),
                          fullname: _nameofperson.text,
                          amount: double.parse(_amount.text) +
                              (double.parse(_amount.text) *
                                  (double.parse(_interestAmount.text) / 100)),
                          duedate: DateFormat('yyyy-MM-dd')
                              .parse(_expectedPayDate.text),
                          status: true);

                      ref
                          .read(lendeeNotifierProvider.notifier)
                          .addLendee(lendee);
                      Navigator.of(context).pop();
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
