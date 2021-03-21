import 'package:flutter/material.dart';

class SwitchSettingWidget extends StatefulWidget {
  final String title;
  final String subTile;

  SwitchSettingWidget(this.title, this.subTile);

  @override
  State<StatefulWidget> createState() {
    return _SwitchSettingWidgetState();
  }
}

class _SwitchSettingWidgetState extends State<SwitchSettingWidget> {
  bool _setting = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subTile),
      onChanged: (bool value) {
        setState(() {
          _setting = value;
        });
      },
      value: _setting,
    );
  }
}
