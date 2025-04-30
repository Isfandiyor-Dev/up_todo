import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';
import 'package:up_todo/src/features/home/presentation/blocs/priority_cubit/priority_cubit.dart';

import '../priority_dialog.dart';

class MyPriorityCard extends StatefulWidget {
  const MyPriorityCard({super.key});

  @override
  State<MyPriorityCard> createState() => _MyPriorityCardState();
}

class _MyPriorityCardState extends State<MyPriorityCard> {
  int? priority;

  void _selectPriorities() async {
    await showDialog(
      context: context,
      builder: (ctx) => PriorityDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PriorityCubit, PriorityState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: _selectPriorities,
          child: state.priority == null
              ? SvgPicture.asset(context.appAssets.flag)
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: context.colorScheme.primaryContainer,
                  ),
                  clipBehavior: Clip.none,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(context.appAssets.flag),
                      const SizedBox(width: 10),
                      Text(state.priority.toString()),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
