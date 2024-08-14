import 'package:flutter/material.dart';
import '../model/ProductModel.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title ?? 'Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                product.image.toString(),
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              product.title ?? '',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              product.description ?? '',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Price: \$${product.price.toString()}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
