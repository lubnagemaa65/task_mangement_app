import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title;
    final String description;
  final String date;
  final Function(bool?)? onChanged;

  final bool checked;

  const TaskItem({
    Key? key,
    required this.title,
  
    required this.checked, required this.description, required this.date, this.onChanged,
  }) : super(key: key);
  
  @override
    Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        leading: Checkbox(
          value: checked,
          onChanged: onChanged,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: checked ? Colors.grey : Colors.black,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFF222222B2),
          ),
        ),
      ),
    );
  }


 

}
