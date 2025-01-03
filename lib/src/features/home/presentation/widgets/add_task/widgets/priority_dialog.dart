import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_todo/src/core/extensions/context_extension.dart';

class PriorityDialog extends StatelessWidget {
  const PriorityDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff363636),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Task Priority",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Divider(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  children: List.generate(
                    10,
                    (index) {
                      return GestureDetector(
                            onTap: () {
                             
                            },
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: 
                                // controller.archivePriority == index + 1
                                    // ?
                                     const Color(0xff8687E7)
                                    // : const Color(0xff272727),
                              ),
                              margin: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(context.appAssets.flag),
                                  const SizedBox(height: 7),
                                  Text("${index + 1}"),
                                ],
                              ),
                            ),
                          );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                          onTap: () {

                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xff8687E7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                  ),
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
