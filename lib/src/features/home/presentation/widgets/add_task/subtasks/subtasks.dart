// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:up_todo/controller/add_properties_controller.dart';
// import 'package:up_todo/models/sub_task.dart';

// class AddSubtasksWidget extends StatefulWidget {
//   const AddSubtasksWidget({super.key});

//   @override
//   State<AddSubtasksWidget> createState() => _AddSubtasksWidgetState();
// }

// class _AddSubtasksWidgetState extends State<AddSubtasksWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTile(
//       onExpansionChanged: (value) {
//         if (!value) {
//           context.read<AddPropertiesController>().removeEmptySubtasks();
//         }
//       },
//       collapsedShape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(10),
//         ),
//       ),
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(10),
//         ),
//       ),
//       iconColor: const Color(0xff808080),
//       collapsedIconColor: const Color(0xff808080),
//       collapsedBackgroundColor: const Color(0xff272727),
//       backgroundColor: const Color(0xff272727),
//       title: const Text(
//         'Subtasks',
//         style: TextStyle(
//           color: Color(0xffAFAFAF),
//         ),
//       ),
//       expandedCrossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Consumer<AddPropertiesController>(
//           builder: (context, controller, child) {
//             return SizedBox(
//               height: MediaQuery.of(context).size.height * 0.25,
//               child: ReorderableListView(
//                 children: [
//                   for (int index = 0; index < controller.subtasks.length; index++)
//                     MySubtaskItem(
//                       key: UniqueKey(),
//                       index: index,
//                       subTask: controller.subtasks[index],
//                     ),
//                 ],
//                 onReorder: (oldIndex, newIndex) {
//                   context.read<AddPropertiesController>().updateMyTiles(oldIndex, newIndex);
//                 },
//               ),
//             );
//           },
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   context.read<AddPropertiesController>().addSubTask();
//                 },
//                 icon: const Icon(Icons.add),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class MySubtaskItem extends StatefulWidget {
//   final int index;
//   final SubTask subTask;

//   const MySubtaskItem({
//     super.key,
//     required this.index,
//     required this.subTask,
//   });

//   @override
//   State<MySubtaskItem> createState() => _MySubtaskItemState();
// }

// class _MySubtaskItemState extends State<MySubtaskItem> {
//   late final TextEditingController textController;

//   @override
//   void initState() {
//     super.initState();
//     textController = TextEditingController(text: widget.subTask.title);
//   }

//   @override
//   void dispose() {
//     textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Drag ikonkasi
//           ReorderableDragStartListener(
//             index: widget.index,
//             child: const Icon(Icons.drag_indicator_rounded),
//           ),
//           // Checkboxni boshqarish
//           Checkbox(
//             value: widget.subTask.isCompleted,
//             onChanged: (value) {
//               if (value != null) {
//                 context.read<AddPropertiesController>().updateSubTaskCheckBox(widget.subTask.id, value);
//               }
//             },
//           ),
//           const SizedBox(width: 5),
//           // Subtask nomini kiritish uchun TextField
//           Expanded(
//             child: TextField(
//               controller: textController,
//               keyboardType: TextInputType.text,
//               textInputAction: TextInputAction.next,
//               onChanged: (value) {
//                 context.read<AddPropertiesController>().updateSubTaskTitle(widget.subTask.id, value);
//               },
//               maxLines: null,
//               minLines: 1,
//               decoration: const InputDecoration(
//                 hintStyle: TextStyle(color: Colors.grey),
//                 enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
//                 focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
//                 disabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
//                 hintText: "Enter new subtask...",
//               ),
//             ),
//           ),
//           // Subtaskni o'chirish uchun tugma
//           IconButton(
//             onPressed: () {
//               context.read<AddPropertiesController>().removeSubTask(widget.subTask.id);
//             },
//             icon: const Icon(Icons.clear),
//           ),
//         ],
//       ),
//     );
//   }
// }
