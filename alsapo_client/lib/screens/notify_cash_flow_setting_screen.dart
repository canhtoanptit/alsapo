import 'package:alsapo_client/widgets/switch_setting_widget.dart';
import 'package:flutter/material.dart';

class NotifyCashFlowSetting extends StatelessWidget {
  final String _receiptsTitle = 'Phieu thu';
  final String _receiptsSubTitle =
      'Hien thi thong bao khi lap phieu thu hoac thanh toan cong no cho KH thanh cong';

  final String _paymentsTitle = 'Phieu chi';
  final String _paymentsSubTitle =
      'Hien thi thong bao khi lap phieu chi hoac thanh toan cong no cho NCC, DTGH thanh cong';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('So Quy'),
      ),
      body: ListView(
        children: [
          SwitchSettingWidget(_receiptsTitle, _receiptsSubTitle),
          SwitchSettingWidget(_paymentsTitle, _paymentsSubTitle)
        ],
      ),
    );
  }
}
