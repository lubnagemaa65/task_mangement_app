import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_managment_app/controller/homeController.dart';
import 'package:tasks_managment_app/screens/addTask.dart';
import 'package:tasks_managment_app/screens/editTask.dart';
import 'package:tasks_managment_app/widgets/taskItem.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to task manager app'),
      ),
      body: Obx(() {
        final homeController = Get.put(HomeController());
        return ListView.builder(
          itemCount: homeController.tasks.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(EditTaskView());
              },
              child: TaskItem(
                title: homeController.tasks[index]['title'],
                description: homeController.tasks[index]['description'],
                checked: homeController.tasks[index]['checked'],
                date: homeController.tasks[index]['date'],
                onChanged: (value) {
                  homeController.toggleTaskCompletion(index);
                },
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddTaskView());
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF1ab8db),
        tooltip: 'Add Task',
      ),
    );
  }
}
