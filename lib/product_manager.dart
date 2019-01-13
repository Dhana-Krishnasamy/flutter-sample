import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct, startingProductImage;
  ProductManager({this.startingProduct, this.startingProductImage});
  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    super.initState();
    if (widget.startingProduct != null)
      _products.add({
        'title': widget.startingProduct,
        'image': widget.startingProductImage
      });
  }

  void _addProduct(String title, String imageUrl) {
    setState(() {
      _products.add({'title': title, 'image': imageUrl});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10), child: ProductControl(_addProduct)),
        Expanded(
          child: Products(_products),
        )
      ],
    );
  }
}
