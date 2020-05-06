import 'package:flutter/material.dart';
import 'package:flutter_workshop/model/product.dart';
import 'product_detail_screen.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/product-list';

  final List<Product> productList = [
    Product(id: '1', name: 'Adidas Shoes', price: 99.98),
    Product(id: '2', name: 'Nike Shoes', price: 129.98),
    Product(id: '3', name: 'New Balance Shoes', price: 399.98),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.black, title: Text('Product List')),
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (ctx, index) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    productList[index].id,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(productList[index].name),
                trailing: Text(productList[index].price.toStringAsFixed(2)),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ProductDetail.routeName,
                          arguments: productList[index].name)
                      .then((response) {
                    print(response);
                  });
                },
              )),
    );
  }
}
