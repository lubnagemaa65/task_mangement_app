import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FormInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool isDate;

  FormInput({
    required this.controller,
    required this.label,
    required this.hint,
    this.isDate = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(height: 4),
        TextFormField(
          controller: controller,
          readOnly: isDate,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
          ),
          onTap: isDate
              ? () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('dd MMM yyyy').format(pickedDate);
                    controller.text = formattedDate;
                  } else {
                    controller.clear();
                  }
                }
              : null,
        ),
      ],
    );
  }
}
