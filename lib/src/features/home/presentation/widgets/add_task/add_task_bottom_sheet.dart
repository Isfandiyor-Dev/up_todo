import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';

import '../custom_text_field.dart';
import 'properties_task.dart';

class MyAddTaskBottomSheet extends StatefulWidget {
  const MyAddTaskBottomSheet({super.key});

  @override
  State<MyAddTaskBottomSheet> createState() => _MyAddTaskBottomSheetState();
}

class _MyAddTaskBottomSheetState extends State<MyAddTaskBottomSheet> {
  final titleController = TextEditingController();

  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          color: context.colorScheme.secondary,
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
                    keyboardType: TextInputType.multiline,
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
