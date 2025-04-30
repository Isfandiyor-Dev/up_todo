import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';

class MyDateTimeCard extends StatefulWidget {
  const MyDateTimeCard({super.key});

  @override
  State<MyDateTimeCard> createState() => _MyDateTimeCardState();
}

class _MyDateTimeCardState extends State<MyDateTimeCard> {
  void _selectDateTime() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2200),
      confirmText: "Choose Time",
    );

    TimeOfDay? pickedTime = await showTimePicker(
      // ignore: use_build_context_synchronously
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      // ignore: use_build_context_synchronously
      // Provider.of<AddPropertiesController>(context, listen: false).setDateTime = DateTime(
      //   pickedDate.year,
      //   pickedDate.month,
      //   pickedDate.day,
      //   pickedTime.hour,
      //   pickedTime.minute,
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<AddPropertiesController>(context);
    return
        // controller.dateTime == null
        //     ?
        IconButton(
      onPressed: _selectDateTime,
      icon: SvgPicture.asset("assets/icons/add_dialog/time.svg"),
    );
    //     :
    //     Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(15),
    //     color: context.colorScheme.primaryContainer,
    //   ),
    //   clipBehavior: Clip.none,
    //   padding: const EdgeInsets.all(8),
    //   child: Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Row(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           SvgPicture.asset(context.appAssets.time),
    //           const SizedBox(width: 10),
    //           // if (controller.dateTime != null) Text(DateFormat("dd/MM  HH:mm").format(controller.dateTime!)),
    //         ],
    //       ),
    //       Container(
    //         color: Colors.white54,
    //         width: 1.5,
    //         height: 25,
    //         margin: const EdgeInsets.symmetric(horizontal: 8),
    //       ),
    //       GestureDetector(
    //         onTap: () {
    //           // controller.setDateTime = null;
    //         },
    //         child: const Icon(Icons.clear_rounded),
    //       ),
    //     ],
    //   ),
    // );
  }
}
