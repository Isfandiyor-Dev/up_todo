import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';

import 'priority_dialog.dart';

class PropertiesTask extends StatefulWidget {
  const PropertiesTask({super.key});

  @override
  State<PropertiesTask> createState() => _PropertiesTaskState();
}

class _PropertiesTaskState extends State<PropertiesTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const MyDateTimeCard(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/add_dialog/tag.svg"),
            ),
            const MyPriorityCard(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/add_dialog/send.svg"),
            ),
          ],
        )
      ],
    );
  }
}

class MyPriorityCard extends StatefulWidget {
  const MyPriorityCard({super.key});

  @override
  State<MyPriorityCard> createState() => _MyPriorityCardState();
}

class _MyPriorityCardState extends State<MyPriorityCard> {
  void _selectPriorities() async {
    await showDialog(
      context: context,
      builder: (ctx) => const PriorityDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<AddPropertiesController>(context, listen: true);
    return GestureDetector(
      onTap: _selectPriorities,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff272727),
        ),
        clipBehavior: Clip.none,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset("assets/icons/add_dialog/flag.svg"),
            const SizedBox(width: 10),
            // Text(controller.priority.toString()),
          ],
        ),
      ),
    );
  }
}

class MyDateTimeCard extends StatefulWidget {
  const MyDateTimeCard({super.key});

  @override
  State<MyDateTimeCard> createState() => _MyDateTimeCardState();
}

class _MyDateTimeCardState extends State<MyDateTimeCard> {
  // void _selectDateTime() async {
  //   DateTime? pickedDate = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime(2200),
  //   );

  //   TimeOfDay? pickedTime = await showTimePicker(
  //     // ignore: use_build_context_synchronously
  //     context: context,
  //     initialTime: TimeOfDay.now(),
  //   );

  //   if (pickedTime != null) {
  //     // ignore: use_build_context_synchronously
  //     // Provider.of<AddPropertiesController>(context, listen: false).setDateTime = DateTime(
  //     //   pickedDate.year,
  //     //   pickedDate.month,
  //     //   pickedDate.day,
  //     //   pickedTime.hour,
  //     //   pickedTime.minute,
  //     // );
  //   }
  //   }

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<AddPropertiesController>(context);
    return 
    // controller.dateTime == null
    //     ? IconButton(
    //         onPressed: _selectDateTime,
    //         icon: SvgPicture.asset("assets/icons/add_dialog/time.svg"),
    //       )
    //     : 
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff272727),
            ),
            clipBehavior: Clip.none,
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(context.appAssets.time),
                    const SizedBox(width: 10),
                    // if (controller.dateTime != null) Text(DateFormat("dd/MM  HH:mm").format(controller.dateTime!)),
                  ],
                ),
                Container(
                  color: Colors.white54,
                  width: 1.5,
                  height: 25,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                ),
                GestureDetector(
                  onTap: () {
                    // controller.setDateTime = null;
                  },
                  child: const Icon(Icons.clear_rounded),
                ),
              ],
            ),
          );
  }
}
