import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "What means 404?",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "DMSans",
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                color: Color(0xff333333),
              ),
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(context.appAssets.notFoundImage),
              const Gap(32),
              const Text(
                "Boo! Page missing!",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.bold,
                  color: Color(0xff333333),
                ),
              ),
              const Gap(14),
              const Text(
                "Whoops! This page must be a ghost - it's not here!",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.bold,
                  color: Color(0xff333333),
                ),
              ),
              const Gap(45),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  context.goNamed(
                    "intro",
                  ); // TODO: If home is ready, it will redirect to "home"
                },
                child: const Text(
                  "Find shelter",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
