import 'package:alsapo_client/screens/transaction_setting_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tong quan'),
        ),
        body: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
              title: Text('Doanh thu'),
              trailing: Row(
                children: [
                  Text('0'),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TransactionSettingScreen()));
                    },
                  ),
                ],
              ))
        ]).toList()));
  }
}
