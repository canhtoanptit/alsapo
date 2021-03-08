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
          children: <Widget>[
            ListTile(
              title: Text('Giao dich'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Hang hoa'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('So Quy'),
              trailing: Icon(Icons.arrow_forward_ios),
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
        ));
  }
}
