import 'package:alsapo_client/screens/notifiers.dart';
import 'package:alsapo_client/screens/notify_screen.dart';
import 'package:alsapo_client/widgets/date_range_dropdown_widget.dart';
import 'package:alsapo_client/widgets/sale_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<SingleNotifier>(create: (_) => SingleNotifier())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlSapo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Tong quan'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add_alert),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotifyScreen()));
                })
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: const Text('Ok'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: const Text('item 1'),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              DateRangeDropDownWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('0 Dong'), Text('0 hoa don')],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('0 Dong'), Text('0 Phieu tra')],
                  ),
                  IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {})
                ],
              ),
              Container(
                height: 180,
                child: SaleChartWidget(),
              )
            ],
          ),
        ));
  }
}
