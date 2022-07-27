import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_ui/components/clipper_container.dart';
import 'package:todo_app_ui/components/custome_clipPath.dart';
import 'package:todo_app_ui/components/sign_btns.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('${deviceHeight(context)}, ${deviceWidth(context)}');
    return Scaffold(
      body: Stack(children: [
        Container(
          height: deviceHeight(context),
          width: deviceWidth(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceWidth(context) * .75,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0XFFFF535E),
                      padding: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              // FilledButtons(deviceWidth(context) * .75, EdgeInsets.all(16),
              //     mainColor(), 'Sign up', (context) {
              // return  Navigator.pushNamed(context, '/signup');
              // }, 30.0, TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
              SizedBox(
                height: 25,
                width: deviceWidth(context),
              ),
              SizedBox(
                width: deviceWidth(context) * .75,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(14),
                      primary: Color(0XFFFF535E),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              // CustomeTextButtons(
              // EdgeInsets.all(14),
              //   mainColor(),
              //  'Log in',
              //  (context){return Navigator.pushNamed(context, '/signin');},
              //  30.0,
              //   TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
              //  ),
              SizedBox(
                height: deviceHeight(context) * .15,
              )
            ],
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .68,
          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(
                deviceHeight(context) * .65, Color(0XFFFF535E)),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .67,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(deviceHeight(context) * .65, Colors.white),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .668,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(
                deviceHeight(context) * .65, Color(0XFFFF535E)),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .657,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(deviceHeight(context) * .65, Colors.white),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .655,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(
                deviceHeight(context) * .65, Color(0XFFFF535E)),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .64,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(deviceHeight(context) * .65, Colors.white),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .638,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(
                deviceHeight(context) * .65, Color(0XFFFF535E)),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .62,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(deviceHeight(context) * .65, Colors.white),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .618,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(
                deviceHeight(context) * .65, Color(0XFFFF535E)),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .59,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: ContainerClipper(deviceHeight(context) * .65, Colors.white),
            clipper: LifetrackClipper(),
          ),
        ),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context) * .588,

          // color: Colors.deepOrange,
          child: ClipPath(
            child: Container(
              color: Color(0XFFFF535E),
              width: deviceWidth(context),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.check_box_outlined,
                  size: 65,
                  color: Colors.white,
                ),
                Text(
                  'lifetrack',
                  style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 55),
                )
              ]),
            ),
            clipper: LifetrackClipper(),
          ),
        ),
      ]),
    );
  }
}

/*
child: Row(children: [
              Icon(
                Icons.check_box_outlined,
                size: 35,
              ),
              Text(
                'lifetrack',
                style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 35),
              )
            ]),
*/
