import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import '../../shared/styles/colors.dart';

class Tasks_List_Tab extends StatelessWidget {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent[100],
      child: CalendarTimeline(
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)),
        onDateSelected: (date) => print(date),
        leftMargin: 20,
        monthColor: Colors.blueGrey,
        dayColor: Colors.teal[200],
        activeDayColor: Colors.white,
        activeBackgroundDayColor: Colors.redAccent[100],
        dotsColor: Color(0xFF333A47),
        selectableDayPredicate: (date) => true,
        locale: 'en_ISO',
      ),
    );
  }
}
