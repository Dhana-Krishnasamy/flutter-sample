import 'package:flutter/material.dart';

import './pages//product_details_page.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  Products(this.products);
  Widget _buildProductItem(context, index) {
    String title = products[index]['title'];
    String image = products[index]['image'];
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset(image),
        Text(title),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ProductDetailsPage(title, image))),
              child: Text('Details'),
            )
          ],
        )
      ],
    ));
  }

  build(context) {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(child: Text('Please add a product'));
  }
}
