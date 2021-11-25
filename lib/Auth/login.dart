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
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          color: Color(0xff5956E9),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
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
                    height: 525,
                    color: Color(0xffFFFFFF),
                    padding: EdgeInsets.only(
                        left: 50, right: 316, bottom: 240, top: 36),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mail_outline_rounded,
                              size: 17,
                              color: Color(0xff868686),
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff868686),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              "rosina@company.com",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 314,
                          height: 1,
                          color: Color(0xffC9C9C9),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.lock,
                              size: 1,
                              color: Color(0xff868686),
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xff868686),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "********",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 177),
                              child: Text(
                                "show",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Color(0xff5956E9),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 314,
                          height: 1,
                          color: Color(0xffC9C9C9),
                        ),
                        Row(
                          children: [
                            Text(
                              "Forget Password?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff5956E9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 70,
                          width: screenWidth/2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff5956E9),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Login",style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Create account",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5956E9),
                            ),
                          ),
                        ),
                      ],
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
