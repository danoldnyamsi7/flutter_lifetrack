import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_ui/components/clipper_container.dart';
import 'package:todo_app_ui/components/sign_btns.dart';
import 'package:todo_app_ui/components/sign_clipper.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/textfield.dart';

class Signup extends StatelessWidget {
  // const Signup({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

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
                  height: deviceHeight(context) * .32,
                ),
                Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        TextField1(
                            hintText: 'Admin',
                            width: deviceWidth(context) * .9,
                            padding: EdgeInsets.all(10.0),
                            obscureText: false),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        TextField1(
                            hintText: 'danoldnyamsi7@gmail.com',
                            width: deviceWidth(context) * .9,
                            padding: EdgeInsets.all(10.0),
                            obscureText: false),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField1(
                            hintText: '***********',
                            width: deviceWidth(context) * .9,
                            padding: EdgeInsets.all(10.0),
                            obscureText: true),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Confirm password',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField1(
                            hintText: '***********',
                            width: deviceWidth(context) * .9,
                            padding: EdgeInsets.all(10.0),
                            obscureText: true),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(5.0, 120.0, 5.0, 0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FilledButtons(
                          x: deviceWidth(context) * .70,
                          padding: EdgeInsets.all(15.0),
                          color: mainColor(),
                          text: 'Create Lietrack account',
                          action: () {
                            Navigator.pushNamed(context, '/get_started');
                          },
                          borderRadius: 30.0,
                          textStyle: TextStyle(fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Already using Lifetrack?',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  Log in',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFFFF535E)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {
                                      Navigator.pushNamed(context, '/signin')
                                    }),
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            // color: Colors.green,
            height: deviceHeight(context) * .30,
            child: Stack(
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
                  clipper: SignCustomeClipper2(deviceWidth(context) * .274,
                      deviceHeight(context) * .068),
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
                  clipper: SignCustomeClipper2(deviceWidth(context) * .391,
                      deviceHeight(context) * .099),
                ),
                ClipPath(
                  child: Container(
                    // color: Color.fromARGB(255, 199, 89, 96),
                    color: Color(0XFFFF535E),
                    child: Container(
                      height: deviceHeight(context) * .30,
                      child: Container(
                        color: Color(0XFFFF535E),
                        width: deviceWidth(context),
                        child: Row(
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
                              )
                            ]),
                      ),
                    ),
                  ),
                  clipper: SignCustomeClipper2(
                      deviceWidth(context) * .4, deviceHeight(context) * .1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
