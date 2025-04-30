import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';
import '../widgets/components/no_tasks.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        leadingWidth: 80,
        title: Row(
          children: [
            Gap(7),
            SvgPicture.asset(
              Assets.logos.svg.logo,
              width: 28,
              height: 28,
            ),
            Gap(8),
            Text(
              "UpTodo",
              style: context.textTheme.headlineSmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_rounded,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          Gap(10),
        ],
      ),
      body: const NoTasks(),
    );
  }
}
