import 'package:alsapo_client/screens/notify_setting_screen.dart';
import 'package:flutter/material.dart';

class NotifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thong bao'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotifySettingScreen()));
              })
        ],
      ),
    );
  }
}
