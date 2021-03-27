import 'package:alsapo_client/widgets/date_range_dropdown_widget.dart';
import 'package:alsapo_client/widgets/sale_chart_widget.dart';
import 'package:alsapo_client/widgets/sales_chart_store_widget.dart';
import 'package:flutter/material.dart';

import 'notify_screen.dart';

class DashboardScreen extends StatelessWidget {
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
          padding: EdgeInsets.only(left: 15.0),
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
              ),
              Container(
                  height: 50,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(bottom: 0.0),
                    title: Text('Dat hang 0'),
                    subtitle: Text('0 phieu'),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  )),
              Divider(),
              Container(
                  height: 50,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(bottom: 0.0),
                    title: Text('To kho 38,849'),
                    subtitle: Text('285 san pham'),
                  )),
              ListTile(
                contentPadding: EdgeInsets.only(bottom: 0.0),
                title: Text('Doanh thu theo chi nhang'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 200,
                child: SalesChartByStore(),
              ),
            ],
          ),
        ));
  }
}
