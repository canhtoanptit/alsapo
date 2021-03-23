import 'package:flutter/material.dart';

class DateRangeDropDownWidget extends StatefulWidget {
  static final List<String> dateRange = [
    "Hom nay",
    "Hom qua",
    "Tuan nay",
    "Tuan truoc",
    "7 ngay qua"
  ];

  const DateRangeDropDownWidget({Key? key}) : super(key: key);

  @override
  _DateRangeDropDownWidgetState createState() {
    return _DateRangeDropDownWidgetState();
  }
}

class _DateRangeDropDownWidgetState extends State<DateRangeDropDownWidget> {
  String _date = 'Hom nay';

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.calendar_today_rounded),
      Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: DropdownButton<String>(
              value: _date,
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? newValue) {
                setState(() {
                  _date = newValue!;
                });
              },
              items: DateRangeDropDownWidget.dateRange
                  .map((e) => DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      ))
                  .toList()))
    ]);
  }
}
