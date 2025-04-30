import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<String> tasks = [];
  final TextEditingController controller = TextEditingController();

  void addTask(String task) {
    setState(() {
      tasks.add(task);
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text((index + 1).toString(), style: const TextStyle(color: Colors.black)),
                ),
                title: Text(tasks[index]),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                addTask(value);
              }
            },
            decoration: InputDecoration(
              hintText: 'Yangi vazifani kiriting...',
              suffixIcon: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    addTask(controller.text);
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
