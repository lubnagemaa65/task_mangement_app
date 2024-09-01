import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_managment_app/controller/addTaskController.dart';
import 'package:tasks_managment_app/views/screens/home.dart';
import 'package:tasks_managment_app/views/widgets/form_input.dart';

class AddTaskView extends StatelessWidget {
  final AddTaskController addTaskController = Get.put(AddTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'ADD TASK',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1ab8db),
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset(
              'assets/logo.png', // Ensure this asset exists.
              width: 100,
              height: 100,
            ),
            SizedBox(height: 30),
            FormInput(
              controller: addTaskController.titleController,
              label: 'Title',
              hint: 'Enter task title',
            ),
            SizedBox(height: 16),
            FormInput(
              controller: addTaskController.descriptionController,
              label: 'Description',
              hint: 'Enter task description',
            ),
            SizedBox(height: 16),
            FormInput(
              controller: addTaskController.dateController,
              label: 'Date end',
              hint: 'Click here to choose date',
              isDate: true,
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                     // Save the task details
                   addTaskController.addTask(
                        addTaskController.titleController.text,
                        addTaskController.descriptionController.text);
                    Get.offAll(() => Home());                  },
                  child: Text('Add'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1ab8db),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(106, 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back(); // Go back to the previous screen
                  },
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(106, 40),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
