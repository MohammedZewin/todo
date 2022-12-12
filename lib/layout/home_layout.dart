import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo84/layout/add_task_bottom_sheet.dart';

import '../modules/settings/settings.dart';
import '../modules/tasks_list/tasks_list.dart';
import '../provider/provide.dart';

class Home_Layout extends StatelessWidget {
  static const String routeName = 'HomeScreen';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        centerTitle: true,
        title: Text('Tasks'),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: provider.currentIndex,
          onTap: (index) {
            provider.ChangeTaps(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: '',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
            side: BorderSide(
          color: Colors.white,
          width: 3,
        )),
        onPressed: () {
          showAddTaskBottomSheet(context);
        },
        child: Icon(Icons.add),
      ),
      body: tabs[provider.currentIndex],
    );
  }

  void showAddTaskBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        context: context,
        builder: (context) => AddTaskBottomSheet());
  }

  List<Widget> tabs = [Tasks_List_Tab(), Setting_Tab()];
}
