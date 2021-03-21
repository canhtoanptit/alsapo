import 'package:alsapo_client/screens/notify_cash_flow_setting_screen.dart';
import 'package:alsapo_client/screens/product_setting_screen.dart';
import 'package:alsapo_client/screens/transaction_setting_screen.dart';
import 'package:flutter/material.dart';

import 'notify_customer_setting_screen.dart';

class NotifySettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cai dat thong bao'),
        ),
        body: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: Text('Giao dich'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TransactionSettingScreen()));
                  },
                ),
              ),
              ListTile(
                title: Text('Hang hoa'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductSettingScreen()));
                  },
                ),
              ),
              ListTile(
                title: Text('So Quy'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotifyCashFlowSetting()));
                  },
                ),
              ),
              ListTile(
                  title: Text('Khach Hang'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NotifyCustomerSettingScreen()));
                    },
                  )),
            ],
          ).toList(),
        ));
  }
}
