import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';

import 'properties_task/date_time_card.dart';
import 'properties_task/priority_card.dart';

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
              icon: SvgPicture.asset(context.appAssets.tag),
            ),
            const MyPriorityCard(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                  Assets.icons.svg.common.send,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
