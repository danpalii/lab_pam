import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    );
    return Container(
      width: double.infinity,
      height: 15,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(80),

      ),

      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),//.symmetric(horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${(controller.animation.value * 60).round()} s", style: TextStyle(color: Colors.white)),
                      SvgPicture.asset("assets/icons/clock.svg"),
                    ],
                  ),
                ),
              ),

              // LayoutBuilder provide us the available space for the conatiner
              // constraints.maxWidth needed for our animation
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  // from 0 to 1 it takes 60s
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                     // gradient: kPrimaryGradient,
                    color: Color(0xFF0BBC00), //#0BBC00
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              // Positioned.fill(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(
              //         horizontal: kDefaultPadding / 2),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text("${(controller.animation.value * 60).round()} sec"),
              //         SvgPicture.asset("assets/icons/clock.svg"),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
