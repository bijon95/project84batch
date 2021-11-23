import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 414,
          color: Color(0xff5956E9),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Welcome back",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 65,
                    fontWeight: FontWeight.w800,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 467,
                    color: Color(0xffFFFFFF),
                    padding:
                        EdgeInsets.only(left: 50, right: 316, bottom: 240,top:36),
                  child: Text(
                      "Login",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
