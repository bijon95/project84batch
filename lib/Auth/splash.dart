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
        Duration(seconds: 20),
            ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
            (BuildContext context)=>Login_page()))
    );
  }

  @override
  Widget build(BuildContext context) {
    var fullwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff5956E9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 138,
              width: fullwidth,
              padding: EdgeInsets.only(left: 51, top: 40),
              child: Text("Find your Gadget",style: TextStyle(fontSize: 65,color: Colors.white,fontWeight: FontWeight.w600),),
            ),
            Container(
              height: 486,
              width: fullwidth,
              padding: EdgeInsets.only(left: 43),
              child: Image.asset("image/splashbg.png"),
            ),
            SizedBox(
              height: 64,
              width: fullwidth,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF),
              ),
              margin: EdgeInsets.only(left: 48,right: 48),
              height: 70,
              width: fullwidth,

              child: Align(
                alignment: Alignment.center,
                child: Text("Get started",style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                ),),
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
