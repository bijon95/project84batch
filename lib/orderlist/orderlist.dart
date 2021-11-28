import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  List<dynamic> lst = [];
  Widget product(double screenWidth, var prodimg, var price, var name, var id) {
    lst.add(1);
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: screenWidth * 0.025,
        ),
        Center(
          child: Container(
            width: screenWidth * 0.7,
            height: screenWidth * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    //width: 0.0,
                    child: Image.asset("asset/orderlist/$prodimg", scale: 1.2)),
                // SizedBox(
                //   width: screenWidth * 0.015,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: screenWidth * 0.09,
                      width: screenWidth * 0.4,
                      child: Text(
                        name,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontFamily: 'RaleWay',
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                    Text(
                      "\$ $price",
                      style: TextStyle(
                        fontFamily: 'RaleWay',
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04,
                        color: Color.fromRGBO(89, 86, 233, 1),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Quantity",
                          style: TextStyle(
                            fontFamily: 'RaleWay',
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.037,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            if (lst[id] != 1) {
                              lst[id]--;
                            }
                            setState(() {});
                          },
                          child: Container(
                              width: screenWidth * 0.037,
                              height: screenWidth * 0.037,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromRGBO(125, 204, 236, 1),
                              ),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.03,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            lst[id].toString(),
                            style: TextStyle(
                              fontFamily: 'RaleWay',
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.037,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            lst[id]++;
                            setState(() {});
                          },
                          child: Container(
                              width: screenWidth * 0.037,
                              height: screenWidth * 0.037,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromRGBO(125, 204, 236, 1),
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.03,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }

  var totalPrice = 954;
  get strTotalPrice => totalPrice.toString();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var hei = screenWidth * 0.035;
    var screenWidth2 = screenWidth;
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(229, 229, 229, 1),
        toolbarHeight: screenHeight * 0.1,
        leading: InkWell(
            onTap: () {
              setState(() {});
            },
            child: Icon(
              Icons.arrow_back_sharp,
              size: screenWidth * 0.04,
              color: Colors.black,
            )),
        title: Center(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Basket",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Raleway",
                fontSize: screenWidth * 0.05,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              setState(() {});
            },
            child: Padding(
              padding: EdgeInsets.only(right: hei),
              child: Icon(Icons.delete_outline,
                  size: screenWidth * 0.04,
                  color: Color.fromRGBO(250, 74, 12, 1)),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenWidth * 0.025,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: screenWidth * 0.6,
              height: screenHeight * 0.055,
              decoration: BoxDecoration(
                color: Color.fromRGBO(211, 242, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/orderlist/notification_orderlist.png',
                    fit: BoxFit.fill,
                  ),
                  Text(
                    " Delivery for FREE until the end of the month",
                    style: TextStyle(
                      fontFamily: 'RaleWay',
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.025,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
              product(screenWidth, "2020-Apple-Air-iPad .png", "579",
                  '2020 Apple iPad Air 10.9\"', 0),
              product(screenWidth, "Apple-Airpods-Pro-White.png", "375",
                  "APPLE AirPods Pro - White", 1),
            ])),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: screenWidth * 0.15,
                right: screenWidth * 0.15,
                bottom: screenWidth * 0.03,
                top: screenWidth * 0.025),
            width: screenWidth * 0.7,
            height: screenHeight * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontFamily: 'RaleWay',
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.042,
                  ),
                ),
                Text(
                  "\$ $strTotalPrice",
                  style: TextStyle(
                    fontFamily: "RaleWay",
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.052,
                    color: Color.fromRGBO(89, 86, 233, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: screenWidth * 0.15,
                right: screenWidth * 0.15,
                bottom: screenWidth * 0.07),
            child: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                width: screenWidth * 0.7,
                height: screenHeight * 0.11,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(89, 86, 233, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "RaleWay",
                      fontSize: screenWidth * 0.05,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
