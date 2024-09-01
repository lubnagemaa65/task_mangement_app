import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_managment_app/controller/addTaskController.dart';
import 'package:tasks_managment_app/controller/homeController.dart';
import 'package:tasks_managment_app/views/screens/addTask.dart';
import 'package:tasks_managment_app/views/screens/editTask.dart';

class Home extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
    final AddTaskController addTaskController = Get.put(AddTaskController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to task management app'),
      ),
      body: 
      Column(
        children: [
          Expanded(
            child:
             Obx(
              () => ListView.builder(
                itemCount: addTaskController.tasks.length,
                itemBuilder: (context, index) {
                  final task = addTaskController.tasks[index];
                  return  GestureDetector(
                  onTap: () {
                        Get.to(EditTaskView(), arguments: task);
                      },
                  child: 
                  ListTile(
                    title: Text(task.title),
                    subtitle: Text(task.description),
                    leading: Checkbox(
                      value: task.completed,
                      onChanged: (value) {
homeController.toggleTaskCompletion(index);                      },
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        homeController.deleteTask(index);
                      },
                    ),
                  ));
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(()=>AddTaskView());
            },
            child: Text('Add Task'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF1ab8db),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
