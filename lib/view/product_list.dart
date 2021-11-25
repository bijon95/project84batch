import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project84batch/Model/model.dart';
class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  var productList = List<ProductModel>.empty();

 Future<List<ProductModel>>  getProductList() async{

    String url = "https://api.ishaqi.com/products";
    Uri myuri = Uri.parse(url);
    var client = http.Client();
    var response =await client.get(myuri);
return productModelFromJson(response.body);
  }

  setDatatoList()async{

    productList =await getProductList();
    print(productList[0].nameBn);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setDatatoList();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
