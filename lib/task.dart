class Task {
  String title;
  String description;
  bool completed;
  bool deleted;
  Task({
    required this.title,
    required this.description,
     this.completed=false,
     this.deleted=false,
  });

}
