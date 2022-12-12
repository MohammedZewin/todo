import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int currentIndex = 0;

  void ChangeTaps(index) {
    currentIndex = index;
    notifyListeners();
  }

  DateTime selectedDate = DateTime.now();

  void ShowDataPicker(BuildContext context) async {
    DateTime? changeDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (selectedDate == null) return;
    selectedDate = changeDate!;
    notifyListeners();
  }
}
