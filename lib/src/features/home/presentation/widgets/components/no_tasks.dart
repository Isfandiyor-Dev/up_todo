import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/gen/assets.gen.dart';

class NoTasks extends StatelessWidget {
  const NoTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize
              .min, // Added to allow the content to fit within the available space
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            SizedBox(
              width: 220,
              height: 220,
              child: SvgPicture.asset(
                Assets.images.svg.common.noTasks,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
                height: 10), // Added to create spacing between the elements
            const Text(
              'What do you want to do today?',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Lato',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
                height:
                    10), // Added to create spacing between the text elements
            const Text(
              'Tap + to add your tasks',
              style: TextStyle(
                fontSize: 15,
                height: 2.5,
                fontFamily: 'Lato',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
