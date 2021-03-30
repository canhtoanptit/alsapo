import 'package:alsapo_client/screens/dashboard_screen.dart';
import 'package:alsapo_client/screens/list_item_screen.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 80,
            child: DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Quyen Tran'), Text('Chi nhanh trung tam')],
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wysiwyg),
            title: const Text('Tong quan'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DashboardScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.widgets_outlined),
            title: const Text('Hang hoa'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListItemScreen()));
            },
          )
        ],
      ),
    );
  }

}