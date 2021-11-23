import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
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
              size: screenWidth * 0.035,
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
                fontSize: screenWidth * 0.04,
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
              child: Icon(Icons.delete,
                  size: screenWidth * 0.03,
                  color: Color.fromRGBO(250, 74, 12, 1)),
            ),
          )
        ],
      ),
    );
  }
}
