import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import 'widgets/properties_task.dart';

class MyAddTaskBottomSheet extends StatelessWidget {
  MyAddTaskBottomSheet({super.key});
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          color: Color(0xff363636),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Add Task",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Title",
                    keyboardType: TextInputType.text,
                    controller: titleController,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    hintText: "Description",
                    keyboardType: TextInputType.text,
                    controller: descriptionController,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 15),
                  // const AddSubtasksWidget(),
                ],
              ),
              const SizedBox(height: 10),
              const PropertiesTask(),
            ],
          ),
        ),
      ),
    );
  }
}
