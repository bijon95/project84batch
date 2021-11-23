import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
            (BuildContext context)=>Login_page()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5956E9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 138,
              width: 292,
              padding: EdgeInsets.only(left: 51, top: 40),
              child: Image.asset("image/splashtxt.png"),
            ),
            Container(
              height: 486,
              width: 486,
              padding: EdgeInsets.only(left: 43),
              child: Image.asset("image/splashbg.png"),
            ),
            SizedBox(
              height: 64,
              width: 454,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                //padding: EdgeInsets.only(left: 50),
                height: 70,
                width: 314,
                color: Color(0xffFFFFFF),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Get started",style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 122,
            ),
          ],
        ),
      ),
    );
  }
}
