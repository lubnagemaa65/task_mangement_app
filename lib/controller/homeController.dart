// home_controller.dart
import 'package:get/get.dart';
import 'package:tasks_managment_app/task.dart';

class HomeController extends GetxController {
  var tasks = [].obs;

   void addTask(String title, String description) {
    tasks.add(Task(title: title, description: description));
  }

  void toggleTaskCompletion(int index) {
    tasks[index]['isCompleted'] = !tasks[index]['isCompleted'];
    update();
  }
     void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void loadMore() {
    var newTodos = [
      {'date': '9 Sep 2022', 'task': 'Example task tod...', 'checked': false},
      {'date': '9 Sep 2022', 'task': 'Example task tod...', 'checked': false},
    ];
    tasks.addAll(newTodos);
  }
}
