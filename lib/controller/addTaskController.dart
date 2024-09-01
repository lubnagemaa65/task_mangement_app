import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_managment_app/task.dart';

class AddTaskController extends GetxController {
  // Define TextEditingControllers to manage form inputs.
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  var tasks = <Task>[].obs;

   void addTask(String title, String description) {
    tasks.add(Task(title: title, description: description));
    update();
  }

  void updateTask(int index, Task updatedTask) {
    tasks[index] = updatedTask;
    update();
  }
 
  // Initialize with sample data for editing purpose.
  @override
  void onInit() {
    super.onInit();
    titleController.text = '';
    descriptionController.text = '';
    dateController.text = '';
  }
   @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

}
