import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_ui/components/clipper_container.dart';
import 'package:todo_app_ui/components/custome_clipPath.dart';
import 'package:todo_app_ui/components/sign_btns.dart';
import 'package:todo_app_ui/components/sign_clipper.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';

class Onboarding_1 extends StatefulWidget {
  @override
  State<Onboarding_1> createState() => _Onboarding_1State();
}

class _Onboarding_1State extends State<Onboarding_1> {
  int _currentStepIndex = 1;
  List<String> _imageList = [
    'assets/images/undraw_time_management_re_tk5w.svg',
    'assets/images/undraw_project_completed_re_jr7u.svg',
    'assets/images/undraw_scrum_board_re_wk7v.svg'
  ];
  List<String> textList = [
    'Save time and be productive by creating daily tasks.',
    'Get that satisfying feeling when marking them done.',
    'Reach your goals faster with Lifetrack.'
  ];

  @override
  Widget build(BuildContext context) {
    print(textList.length);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: deviceHeight(context) * .03,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: deviceWidth(context) * .9,
              child: StepProgressIndicator(
                totalSteps: 3,
                currentStep: _currentStepIndex,
                selectedColor: mainColor(),
                unselectedColor: Color.fromARGB(255, 211, 211, 211),
              ),
            ),
          ]),
          SizedBox(
            height: deviceHeight(context) * .019,
          ),
          Container(
            // color: mainColor(),

            // length of the 2nd part
            // height: deviceHeight(context) * .9,
            child: Column(
              children: [
                Container(
                  child: Container(
                      // width: deviceWidth(context) * .8,
                      child: Center(
                    child: SvgPicture.network(_imageList[_currentStepIndex - 1],
                        width: deviceWidth(context)*.85, ),
                  )),
                  // length of picture box
                  // color: Colors.black26,
                  height: deviceHeight(context) * .445,
                ),
                Container(
                  // color: Colors.amber,
                  height: deviceHeight(context) * .9 / 1.8,
                  child: ClipPath(
                    clipper: OnboardingClipper(),
                    child: Container(
                      color: mainColor(),
                      child: Column(
                        children: [
                          SizedBox(
                            height: deviceHeight(context) * .22,
                          ),
                          SizedBox(

                              width: deviceWidth(context),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: deviceWidth(context)*.75,
                                    child: Text(
                                      textList[_currentStepIndex - 1],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w800),
                                          // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                          SizedBox(
                            height: deviceHeight(context) * .1,
                          ),
                          Container(
                            child: Column(
                              children: [
                                FilledButtons(
                                    x: deviceWidth(context) * .8,
                                    padding: EdgeInsets.all(15.0),
                                    color: Colors.white,
                                    text: 'Continue',
                                    action: () async {
                                      if ((_currentStepIndex >= 0) &&
                                          (_currentStepIndex <=
                                              textList.length - 2)) {
                                        // _currentStepIndex + 1;
                                        print(
                                            'Continue to step: $_currentStepIndex');
                                        setState(() {
                                          _currentStepIndex++;
                                        });
                                      } else if (_currentStepIndex == 2) {
                                        print(
                                            'Continue to step: $_currentStepIndex');
                                        setState(() {
                                          _currentStepIndex++;
                                        });

                                        await Future.delayed(
                                            Duration(seconds: 1));
                                        Navigator.pushNamed(
                                            context, '/tasks_list');
                                      } else if (_currentStepIndex > 2) {
                                        print('exeeded ${_currentStepIndex++}');
                                      }
                                    },
                                    borderRadius: 30.0,
                                    textStyle: TextStyle(
                                        color: mainColor(),
                                        fontWeight: FontWeight.w900)),
                                SizedBox(
                                  height: deviceHeight(context) * .009,
                                ),
                                CustomeTextButtons(
                                  padding: EdgeInsets.all(15.0),
                                  color: Colors.white,
                                  text: 'Skip',
                                  action: () {
                                    print(Navigator.pushNamed(
                                        context, '/tasks_list'));
                                  },
                                  borderRadius: 30,
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15.0),
                                  x: deviceWidth(context) * .8,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   // color: mainColor(),
          //   height: deviceHeight(context) * .945,
          //   width: deviceWidth(context),
          //   child: Column(
          //     children: [
          //       Container(
          //         color: Colors.white,
          //         height: deviceHeight(context) * .945 / 2.6,
          //         // increase decrease height
          //         child: Container(),
          //       ),
          //       Container(
          //         color: mainColor(),
          //         width: deviceWidth(context),
          //         height: deviceHeight(context) * .945 -
          //             deviceHeight(context) * .945 / 2.6,
          //         child: ClipPath(
          //           clipper: OnboardingClipper(),
          //           child: Container(
          //             width: deviceWidth(context),
          //             height: deviceHeight(context) * .945 -
          //                 deviceHeight(context) * .945 / 3.2,
          //                 // increase decrease child
          //             color: Colors.black,
          //             child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   SizedBox(
          //                     height: deviceHeight(context) * .3,
          //                   ),
          //                   SizedBox(
          //                       width: deviceWidth(context) * .85,
          //                       child: Padding(
          //                         padding: const EdgeInsets.symmetric(
          //                             horizontal: 15.0),
          //                         child: Text(
          //                           textList[_currentStepIndex - 1],
          //                           style: TextStyle(
          //                               color: Colors.white,
          //                               fontSize: 20.0,
          //                               fontWeight: FontWeight.w800),
          //                         ),
          //                       )),
          //                   SizedBox(
          //                     height: deviceHeight(context) * .1,
          //                   ),
          //                   Container(
          //                     child: Column(
          //                       children: [
          //                         FilledButtons(
          //                             x: deviceWidth(context) * .8,
          //                             padding: EdgeInsets.all(15.0),
          //                             color: Colors.white,
          //                             text: 'Continue',
          //                             action: () {
          //                               Navigator.pushNamed(
          //                                   context, '/tasks_list');
          //                             },
          //                             borderRadius: 30.0,
          //                             textStyle: TextStyle(
          //                                 color: mainColor(),
          //                                 fontWeight: FontWeight.w900)),
          //                         SizedBox(
          //                           height: deviceHeight(context) * .009,
          //                         ),
          //                         CustomeTextButtons(
          //                           padding: EdgeInsets.all(15.0),
          //                           color: Colors.white,
          //                           text: 'Skip',
          //                           action: () {
          //                             print(
          //                                 'pressed skip at: ${_currentStepIndex}');
          //                           },
          //                           borderRadius: 30,
          //                           textStyle: TextStyle(
          //                               color: Colors.white,
          //                               fontWeight: FontWeight.w900,
          //                               fontSize: 15.0),
          //                           x: deviceWidth(context) * .8,
          //                         ),
          //                       ],
          //                     ),
          //                   )
          //                 ]),
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

/*

  OverlayFunc(BuildContext context){
      OverlayState overlayState = Overlay.of(context);
      OverlayEntry overlayEntry = OverlayEntry(
        builder: (context)=> Positioned(
          top: ,
          bottom: ,
          left: ,
          right: ,
          child: ,
        ),
        maintainState: ,
        opaque: ,
      )

      overlayState.insert(overlayEntry)
  }

*/

/// to do
/// add overlay to make it