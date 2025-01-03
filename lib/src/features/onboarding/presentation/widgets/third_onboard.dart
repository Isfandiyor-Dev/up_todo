import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/app_size_extension.dart';

class ThirdOnboard extends StatelessWidget {
  const ThirdOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.svg.common.organizeTasks,
            width: context.getWidth(0.685),
            height: context.getHeight(0.309),
          ),
          const Gap(50),
          Column(
            children: [
              Text(
                'Organize your tasks',
                style: TextStyle(
                  fontSize: context.isSmallWidth ? context.getWidth(0.055) : 25,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  height: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'You can organize your daily tasks by adding your tasks into separate categories',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize:
                        context.isSmallWidth ? context.getWidth(0.035) : 15,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
