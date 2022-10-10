import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:intl/intl.dart';
import 'package:wankolota/model/lendee_history/lendee_history.dart';

class LendeeListHistoryWidget extends ConsumerWidget {
  final List<LendeeHistory> data;

  LendeeListHistoryWidget(this.data);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userProvider = ref.watch(userNotifierProvider.notifier);

    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context2, int index) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: ListTile(
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
                  "Payment",
                  style: TextStyle(
                      color: Colors.black45, fontWeight: FontWeight.bold),
                ),
                // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                subtitle: Row(
                  children: <Widget>[
                    Icon(Icons.linear_scale, color: Colors.yellowAccent),
                    Text(
                      DateFormat('MMM-dd').format(data[index].transactionDate),
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(" R " + data[index].amount.toStringAsFixed(2),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                    /*  Container(
                      alignment: Alignment.center,
                      width: 75,
                      height: 20,
                      color:
                          data[index].transactionDate.isBefore(DateTime.now())
                              ? Colors.red
                              : Colors.green, //    < ,
                      child: Text(
                        data[index].transactionDate.isBefore(DateTime.now())
                            ? "Overdue"
                            : "Good",
                        style: TextStyle(fontSize: 15),
                      ),
                    )*/
                  ],
                )),
          );
        },
      ),
    );
  }
}
