import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo84/provider/provide.dart';
import 'package:todo84/shared/styles/colors.dart';

class AddTaskBottomSheet extends StatelessWidget {
  var titleController = TextEditingController();
  var descriptionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Add New Task',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'Please Enter title';
                      } else
                        return null;
                    },
                    controller: titleController,
                    decoration: InputDecoration(
                      label: Text('title'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'Please Enter Description';
                      } else
                        return null;
                    },
                    maxLines: 3,
                    controller: descriptionController,
                    decoration: InputDecoration(
                      label: Text('Description'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Selected Data',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                provider.ShowDataPicker(context);
              },
              child: Text(
                  '${provider.selectedDate.year}/'
                  '${provider.selectedDate.month}/'
                  '${provider.selectedDate.day}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                child: Text(
                  'Add Task',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.white, fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
