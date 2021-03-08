import 'package:flutter/material.dart';

class NotifyCustomerSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Khach hang'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Sinh nhar'),
            onChanged: (bool value) {},
            value: false,
          )
        ],
      ),
    );
  }
}
