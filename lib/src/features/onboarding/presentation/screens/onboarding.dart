import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/src/core/extensions/app_size_extension.dart';
import 'package:up_todo/src/features/onboarding/presentation/bloc/onboarding_cubit.dart';
import 'package:up_todo/src/features/onboarding/presentation/bloc/onboarding_state.dart';

import '../widgets/first_onboard.dart';
import '../widgets/second_onboard.dart';
import '../widgets/third_onboard.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final pageController = PageController();

  Widget navItemRectangle(bool isCurrent) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: 26.28,
      height: isCurrent ? 5 : 4,
      decoration: BoxDecoration(
        color: isCurrent
            ? const Color.fromARGB(250, 255, 255, 255)
            : const Color(0xFFA2A2A2),
        borderRadius: BorderRadius.circular(60),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = context.read<OnboardingCubit>();
    return BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
      return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (int page) {
                onboardingCubit.setCurrentPage(page);
              },
              children: const [FirstOnboard(), SecondOnboard(), ThirdOnboard()],
            ),
            Positioned(
              left: 20,
              top: 40,
              child: TextButton(
                onPressed: () {
                  context.goNamed("home");
                },
                child: Text(
                  'SKIP',
                  style: TextStyle(
                    fontSize:
                        context.isSmallWidth ? context.getWidth(0.04) : 18,
                    fontFamily: 'Lato',
                    color: const Color.fromARGB(112, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.17),
              child: SizedBox(
                width: 95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    navItemRectangle(state.currentPage == 0),
                    navItemRectangle(state.currentPage == 1),
                    navItemRectangle(state.currentPage == 2),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 20,
              child: TextButton(
                onPressed: () {
                  if (state.currentPage > 0) {
                    pageController.previousPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInOutCubicEmphasized,
                    );
                  }
                },
                child: Text(
                  'BACK',
                  style: TextStyle(
                    fontSize:
                        context.isSmallWidth ? context.getWidth(0.04) : 18,
                    fontFamily: 'Lato',
                    color: const Color.fromARGB(112, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: InkWell(
                onTap: () {
                  if (state.currentPage < 2) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.decelerate,
                    );
                  } else {
                    context.goNamed("home");
                  }
                },
                child: Ink(
                  height: context.isSmallWidth ? context.getWidth(0.1) : 48,
                  decoration: BoxDecoration(
                    color: const Color(0xff8875FF),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        state.currentPage < 2 ? 'NEXT' : 'GET STARTED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: context.isSmallWidth
                              ? context.getWidth(0.04)
                              : 18,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
