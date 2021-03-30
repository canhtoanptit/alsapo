import 'package:alsapo_client/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

import 'notify_screen.dart';

class ListItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hang hoa'),
        actions: <Widget>[
          PopupMenuButton<int>(
            tooltip: 'Sap xep',
            icon: Icon(Icons.sort),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Moi nhat"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Cu nhat"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Gia tang"),
              ),
              PopupMenuItem(
                value: 4,
                child: Text("Gia giam"),
              ),
              PopupMenuItem(
                value: 5,
                child: Text("A-Z"),
              ),
            ],
          ),
          SizedBox(width: 10),
          PopupMenuButton<int>(
            tooltip: 'Add new item',
            icon: Icon(Icons.add),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("First"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Second"),
              ),
            ],
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("click search");
            },
          ),
          SizedBox(width: 10),
          IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotifyScreen()));
              })
        ],
      ),
      drawer: DrawerWidget(),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
