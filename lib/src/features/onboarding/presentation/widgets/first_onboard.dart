import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/app_size_extension.dart';

class FirstOnboard extends StatelessWidget {
  const FirstOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.svg.common.manageTask,
            width: context.getWidth(0.568),
            height: context.getHeight(0.342),
          ),
          const Gap(50),
          Column(
            children: [
              Text(
                'Manage your tasks',
                style: TextStyle(
                  fontSize: context.isSmallWidth ? context.getWidth(0.055) : 25,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  height: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  'You can easily manage all of your daily tasks in DoMe for free',
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
