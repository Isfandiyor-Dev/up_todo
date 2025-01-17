import 'package:flutter/material.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';
import '../widgets/components/no_tasks.dart';
import '../widgets/drawer/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        toolbarHeight: 65,
        leadingWidth: 80,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.filter_list_rounded,
            size: 35,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Home",
          style: context.textTheme.headlineSmall,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: CircleAvatar(
                backgroundImage: AssetImage(Assets.images.png.myPhoto.path),
                radius: 22,
              ),
            ),
          ),
        ],
      ),
      body: const NoTasks(),
    );
  }
}
