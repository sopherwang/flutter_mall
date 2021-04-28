import 'package:flutter/cupertino.dart';
import 'package:flutter_mall/network/models/product.dart';

class ProductGridList extends StatelessWidget {
  final String _title;
  final List<Product> _products;

  ProductGridList(this._title, this._products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(_title),
            Text('See more')
          ],
        ),
        Column(
          children: _products.map((product) => ProductGridItem(product)).toList(),
        )
      ],
    );
  }
}

class ProductGridItem extends StatelessWidget {
  final Product _product;

  ProductGridItem(this._product);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(_product.pic),
        Text(_product.name),
        Row(
          children: [
            Text(_product.price.toString()),
            Text(_product.sale.toString())
          ],
        )
      ],
    );
  }

}