import 'package:alsapo_client/widgets/switch_setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'customer_birthday_setting_data.dart';
import 'notifiers.dart';

class NotifyCustomerSettingScreen extends StatelessWidget {
  final String _title = 'Sinh nhat';
  final String _subTitle = 'Hien thi thong bao sinh nhat khach hang';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Khach hang'),
      ),
      body: ListView(
        children: [
          SwitchSettingWidget(_title, _subTitle),
          ListTile(
            title: Text('Co sinh nhat trong'),
            subtitle: Text('2 ngay toi'),
            onTap: () => _showMultipleChoiceDialog(context),
          )
        ],
      ),
    );
  }

  _showMultipleChoiceDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        final _singleNotifier = Provider.of<SingleNotifier>(context);
        return AlertDialog(
          title: Text('Co sinh nhat trong'),
          content: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: listBirthdaySetting
                    .map((e) => RadioListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        groupValue: _singleNotifier.currentBirthday,
                        selected: _singleNotifier.currentBirthday == e,
                        title: Text(e),
                        value: e,
                        onChanged: (value) {
                          _singleNotifier.updateBirthday(value.toString());
                          Navigator.of(context).pop();
                        }))
                    .toList(),
              ),
            ),
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      });
}
