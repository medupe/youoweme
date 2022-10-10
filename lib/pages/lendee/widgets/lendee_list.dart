import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:wankolota/core/helper/helpers.dart';

import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/pages/lendee/lendee_history_page.dart';
import 'package:wankolota/providers/lendee_provider.dart';

class LendeeListWidget extends ConsumerWidget {
  final List<Lendee> data;

  LendeeListWidget(this.data);
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userProvider = ref.watch(userNotifierProvider.notifier);

    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context2, int index) {
          return Container(
            child: Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      label: "Paid?",
                      icon: Icons.money_rounded,
                      onPressed: (context3) async {
                        await alertUpdate(
                            data[index].amount, data[index], ref, context);
                      },
                    ),
                    SlidableAction(
                      label: "Delete?",
                      icon: Icons.delete_forever,
                      onPressed: (context3) async {
                        await alertDelete(data[index], context, ref);
                      },
                    )
                  ],
                ),

                // decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  onTap: () {
                    ref
                        .read(lendeeNotifierProvider.notifier)
                        .getLendeeHistory(data[index].id ?? "");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LendeeHistoryPage()),
                    );
                  },

                  //    contentPadding:
                  //     EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  //     leading: Container(
                  // padding: EdgeInsets.only(right: 12.0),
                  /* decoration: new BoxDecoration(
                      border: new Border(
                        right: new BorderSide(width: 1.0, color: Colors.white24),
                      ),
                    ),*/
                  //    child: Icon(Icons.autorenew, color: Colors.red),
                  //   ),
                  title: Text(
                    data[index].fullname,
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.linear_scale, color: Colors.yellowAccent),
                      Text(
                        DateFormat('MMM-dd')
                            .format(data[index].lendDate ?? DateTime.now()),
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(Icons.linear_scale, color: Colors.red),
                      Text(
                        DateFormat('MMM-dd').format(data[index].duedate),
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        " R " + data[index].amount.toStringAsFixed(2),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 75,
                        height: 20,
                        color: data[index].duedate.isBefore(DateTime.now())
                            ? Colors.red
                            : Colors.green, //    < ,
                        child: Text(
                          data[index].duedate.isBefore(DateTime.now())
                              ? "Overdue"
                              : "Good",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future alertUpdate(
      double amount, Lendee data, WidgetRef ref, BuildContext context) async {
    final _formKey = GlobalKey<FormState>();
    return await Alert(
        context: context,
        title: "Update payment",
        content: Column(
          children: <Widget>[
            Text(
              "Owed amount " + amount.toStringAsFixed(2),
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "Please not if full amount is pad it will automaticcaly close",
              style: TextStyle(fontSize: 8),
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _amountController,
                validator: (value) {
                  bool isInteger = false;
                  if (Helpers.isNumericUsingTryParse(value!)) {
                    isInteger = true;
                  }
                  if (isInteger) {
                    final double ent = double.parse(value);
                    if (amount < ent) {
                      return "Amount entered must \n be less than owed amount";
                    }
                  } else {
                    return "Amount must be valid";
                  }

                  return null;
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.money_sharp),
                  labelText: 'Amount paid',
                ),
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final enteredAmount = double.parse(_amountController.text);

                ref
                    .read(lendeeNotifierProvider.notifier)
                    .updateLendee(data, enteredAmount);
                Navigator.of(context).pop();
              }
            },
            child: Text(
              "Pay",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  Future alertDelete(Lendee data, BuildContext context, WidgetRef ref) {
    return Alert(
      context: context,
      type: AlertType.error,
      title: "Delete",
      desc: "Are you sure you want to delete?",
      buttons: [
        DialogButton(
          child: Text(
            "CANCEL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        DialogButton(
          child: Text(
            "DELETE",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            ref.read(lendeeNotifierProvider.notifier).deleteLendee(data, true);

            Navigator.pop(context);
          },
          color: Colors.red,
        )
      ],
    ).show();
  }
}
