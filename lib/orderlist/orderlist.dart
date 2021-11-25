import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  var totalPrice = 954;
  get strTotalPrice => totalPrice.toString();
  @override
  
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var hei = screenWidth * 0.035;
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
                fontSize: screenWidth * 0.045,
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
                  size: screenWidth * 0.035,
                  color: Color.fromRGBO(250, 74, 12, 1)),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: screenWidth * 0.7,
        color: Colors.red,
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
                Text("Total",style: TextStyle(
                  fontFamily: 'RaleWay',
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.042,
                ),),
                
                Text("\$ $strTotalPrice",style: TextStyle(
                  fontFamily: "RaleWay",
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.052,
                  color: Color.fromRGBO(89, 86, 233, 1),
                ),),
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
              child: 
              Container(
                
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
