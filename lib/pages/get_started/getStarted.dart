import 'package:flutter/material.dart';
import 'package:todo_app_ui/components/clipper_container.dart';
import 'package:todo_app_ui/components/sign_btns.dart';
import 'package:todo_app_ui/components/sign_clipper.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: deviceWidth(context),
            height: deviceHeight(context),
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: deviceHeight(context) * .56,
                ),
                Container(
                  // color: Colors.amber,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: deviceWidth(context),
                        child: Text(
                          'Reach your goals faster and keep your personal and profesional life in order.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight(context) * .13,
                      ),
                      SizedBox(
                        width: deviceWidth(context)*.75,
                        child: FilledButtons(
                            x: deviceWidth(context) ,
                            padding: EdgeInsets.all(15),
                            color: Color(0XFFFF535E),
                            text: 'Get started',
                            action: () {
                              Navigator.pushNamed(context, '/onboarding_1');
                            },
                            borderRadius: 30.0,
                            textStyle: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              ClipPath(
                child: Container(
                  color: Color(0XFFFF535E),
                  child: CustomeContainer(
                      deviceHeight(context) * .30, mainColor()),
                ),
                clipper: SignCustomeClipper2(
                    deviceWidth(context) * 0, deviceHeight(context) * 0),
              ),
              ClipPath(
                child: Container(
                  // color: Color.fromARGB(255, 199, 89, 96),
                  color: Colors.white,
                  child: CustomeContainer(
                      deviceHeight(context) * .30, mainColor()),
                ),
                clipper: SignCustomeClipper2(
                    deviceWidth(context) * .12, deviceHeight(context) * .029),
              ),
              ClipPath(
                child: Container(
                  // color: Color.fromARGB(255, 199, 89, 96),
                  color: Color(0XFFFF535E),
                  child: CustomeContainer(
                      deviceHeight(context) * .30, mainColor()),
                ),
                clipper: SignCustomeClipper2(
                    deviceWidth(context) * .129, deviceHeight(context) * .03),
              ),
              ClipPath(
                child: Container(
                  color: Colors.white,
                  child: CustomeContainer(
                      deviceHeight(context) * .30, mainColor()),
                ),
                clipper: SignCustomeClipper2(
                    deviceWidth(context) * .274, deviceHeight(context) * .068),
              ),
              ClipPath(
                child: Container(
                  // color: Color.fromARGB(255, 199, 89, 96),
                  color: Color(0XFFFF535E),
                  child: CustomeContainer(
                      deviceHeight(context) * .30, mainColor()),
                ),
                clipper: SignCustomeClipper2(
                    deviceWidth(context) * .28, deviceHeight(context) * .07),
              ),
              ClipPath(
                child: Container(
                  // color: Color.fromARGB(255, 199, 89, 96),
                  color: Colors.white,
                  child: CustomeContainer(
                      deviceHeight(context) * .30, mainColor()),
                ),
                clipper: SignCustomeClipper2(
                    deviceWidth(context) * .391, deviceHeight(context) * .099),
              ),
              ClipPath(
                child: Container(
                  // color: Color.fromARGB(255, 199, 89, 96),
                  color: Color(0XFFFF535E),
                  child: Container(
                    height: deviceHeight(context) * .54,
                    child: Container(
                      color: Color(0XFFFF535E),
                      width: deviceWidth(context),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 105.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_box_outlined,
                                  size: 55,
                                  color: Colors.white,
                                ),
                                Text(
                                  'lifetrack',
                                  style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 55),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 105.0,
                            ),
                            Text(
                              'Welcome aboard,',
                              style: TextStyle(
                                color: Color.fromARGB(255, 241, 240, 240),
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              'Adam',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900),
                            ),
                          ]),
                    ),
                  ),
                ),
                clipper: SignCustomeClipper2(
                    deviceWidth(context) * .4, deviceHeight(context) * .1),
              ),
            ],
          ),
          // ),
        ],
      ),
    );
  }
}
