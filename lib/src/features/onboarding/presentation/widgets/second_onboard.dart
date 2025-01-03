import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/app_size_extension.dart';

class SecondOnboard extends StatelessWidget {
  const SecondOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.svg.common.createRoutine,
            width: context.getWidth(0.722),
            height: context.getHeight(0.364),
          ),
          const Gap(50),
          Column(
            children: [
              Text(
                'Create daily routine',
                style: TextStyle(
                  fontSize: context.width < 400 ? context.getWidth(0.055) : 25,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  height: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  'In UpTodo you can create your personalized routine to stay productive',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize:
                        context.width < 400 ? context.getWidth(0.035) : 15,
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
