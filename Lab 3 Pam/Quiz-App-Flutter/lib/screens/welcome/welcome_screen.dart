import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Stack(
        children: [
          SvgPicture.asset("assets/icons/quiz.svg", width: 100, height: 100),//fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 87, top: 290, right: 87, bottom: 167),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text(
                    "Math for everyone",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 48, fontFamily: 'SF Pro Text',),
                  ),


                  Spacer(), // 1/6

                  Spacer(), // 1/6
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width:  double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.80), // 15
                      decoration: BoxDecoration(
                          color: const Color(0xff252C32),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Text(
                        "Start",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
