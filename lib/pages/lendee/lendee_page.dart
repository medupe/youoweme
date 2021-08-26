import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:wankolota/application/lendee/lendee_application.dart';
import 'package:wankolota/core/helper/helpers.dart';
import 'package:wankolota/core/ui/snackbar.dart';
import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/pages/lendee/widgets/lendee_list.dart';
import 'package:wankolota/providers/lendee_provider.dart';

class LendeePage extends StatelessWidget {
  LendeePage({Key? key}) : super(key: key);
  final TextEditingController _nameofperson = TextEditingController();
  final TextEditingController _amount = TextEditingController();
  final TextEditingController _cellNumber = TextEditingController();
  final TextEditingController _expectedPayDate = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ProviderListener<LendeeApplication>(
            provider: lendeeNotifierProvider,
            onChange: (context, state) {
              print("Jordna perterson");
              if (state is LendeeErrorDetails) {
                AppSnackBar.showSnackBar(state.message ?? "", context);
              }
            },
            child: Consumer(builder: (context, watch, child) {
              final state = watch(lendeeNotifierProvider);

              if (state is LendeeInitial) {
                return Text("intial");
              } else if (state is LendinginitialData) {
                return LendeeList(data: state.lendeeData);
              } else if (state is LendeeLoading) {
                return CircularProgressIndicator();
              } else {
                return Text("No Data");
              }
            }),
          ),
        ],
      ),
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
                          } else {
                            if (value.length != 10) {
                              return "cell number must be 10 digit long";
                            }
                            if (!Helpers.isNumericUsingTryParse(value)) {
                              return "cell number must digit";
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          labelText: 'Cellnumbe of person',
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
                      final lendee = Lendee(
                          lendDate: DateTime.now(),
                          fullname: _nameofperson.text,
                          amount: double.parse(_amount.text),
                          duedate: DateFormat('yyyy-MM-dd')
                              .parse(_expectedPayDate.text),
                          status: true);

                      context
                          .read(lendeeNotifierProvider.notifier)
                          .addLendee(lendee);
                      AppSnackBar.showSnackBar("Record saved", context);
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    "LOGIN",
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
