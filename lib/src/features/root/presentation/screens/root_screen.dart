import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/src/core/extensions/context/app_media_query_size_extension.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';
import 'package:up_todo/src/core/extensions/context/nav_bar_items_extension.dart';
// import '../../../home/presentation/widgets/add_task/add_task_bottom_sheet.dart';

class RootScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const RootScreen({super.key, required this.navigationShell});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: widget.navigationShell,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {
            // showModalBottomSheet(
            //   context: context,
            //   isScrollControlled: true,
            //   builder: (ctx) => MyAddTaskBottomSheet(),
            // );
          },
          backgroundColor: const Color(0xff8687E7),
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: 4,
        height: context.getHeight(0.1),
        // backgroundColor: const Color(0xff363636),
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        tabBuilder: (index, isActive) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                isActive
                    ? context.bottomNavBarItems[index].activeIcon
                    : context.bottomNavBarItems[index].icon,
                width: isActive ? 25 : 22,
                height: isActive ? 25 : 22,
              ),
              const Gap(5),
              Text(
                context.bottomNavBarItems[index].label,
                style: context.textTheme.labelSmall?.copyWith(
                  letterSpacing: 0.7,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                  color: isActive ? context.textTheme.labelSmall?.color : null,
                ),
              ),
            ],
          );
        },
        activeIndex: widget.navigationShell.currentIndex,
        onTap: widget.navigationShell.goBranch,
        gapLocation: GapLocation.center,
      ),
    );
  }
}
