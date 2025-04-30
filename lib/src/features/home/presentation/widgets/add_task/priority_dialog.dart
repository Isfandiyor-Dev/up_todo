import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';
import 'package:up_todo/src/features/home/presentation/blocs/priority_cubit/priority_cubit.dart';

class PriorityDialog extends StatefulWidget {
  const PriorityDialog({super.key});

  @override
  State<PriorityDialog> createState() => _PriorityDialogState();
}

class _PriorityDialogState extends State<PriorityDialog> {
  late final ValueNotifier<int?> priority;
  @override
  void initState() {
    super.initState();
    priority = ValueNotifier<int?>(null);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        final int? cachedPriority =
            context.read<PriorityCubit>().state.priority;
        priority.value = cachedPriority;
      }
    });
  }

  @override
  void dispose() {
    priority.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final priorityCubit = context.read<PriorityCubit>();

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.colorScheme.secondary,
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Task Priority",
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
              const Divider(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ValueListenableBuilder<int?>(
                  valueListenable: priority,
                  builder: (context, selectedPriority, _) {
                    return Wrap(
                      spacing: 18,
                      runSpacing: 18,
                      children: List.generate(
                        10,
                        (index) {
                          final bool isSelected = selectedPriority == index + 1;
                          return GestureDetector(
                            onTap: () {
                              if (isSelected) {
                                priority.value = null;
                              } else {
                                priority.value = index + 1;
                              }
                            },
                            child: AnimatedContainer(
                              width: 68,
                              height: 68,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: isSelected
                                    ? Border.all(
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: context.colorScheme.onPrimary,
                                        width: 2,
                                      )
                                    : null,
                                color: isSelected
                                    ? context.colorScheme.primary
                                    : context.colorScheme.primaryContainer,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(context.appAssets.flag),
                                  const SizedBox(height: 7),
                                  Text(
                                    "${index + 1}",
                                    style: context.textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: context.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        if (priority.value != null) {
                          log("priority nullga teng emas");
                          priorityCubit.setPriority(priority.value);
                        } else {
                          log("priority nullga teng");
                          priorityCubit.disposePriority();
                        }
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              'Save',
                              style: context.textTheme.labelLarge?.copyWith(
                                  color: context.colorScheme.onPrimary),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
