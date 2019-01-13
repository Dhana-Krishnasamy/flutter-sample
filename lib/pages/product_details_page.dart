import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  ProductDetailsPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Detail'),
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text('DELETE'),
                color: Theme.of(context).accentColor,
                onPressed: () => Navigator.pop(context),
              ),
            )
          ],
        ));
  }
}
