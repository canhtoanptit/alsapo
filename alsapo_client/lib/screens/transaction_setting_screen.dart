import 'package:flutter/material.dart';

class TransactionSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giao dich'),
      ),
      body: ListView(children: <Widget>[
        ListTile(
            title: Text('Dat hang'),
            subtitle: Text('Hien thi thong bao dat hang')),
        Container(
          child: SwitchListTile(
            title: Text('Hoan thanh dat hang'),
            onChanged: (bool value) {},
            value: false,
          ),
          margin: const EdgeInsets.only(left: 50.0),
        ),
        Container(
          child: SwitchListTile(
            title: Text('Hoan thanh dat hang'),
            onChanged: (bool value) {},
            value: false,
          ),
          margin: const EdgeInsets.only(left: 50.0),
        ),
        Divider()
      ]),
    );
  }
}
