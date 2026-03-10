import 'package:ejercicio_clase/model/product_model.dart';
import 'package:ejercicio_clase/service/product_service.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final int id;
  const ProductDetailScreen({super.key, required this.id});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('detail')),
      body: FutureBuilder(
        future: ProductService().getProductoUnico(widget.id),
        builder: (BuildContext _, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('error'));
          } else if (snapshot.hasData) {
            final ProductModel? data = snapshot.data;
            if (data == null) {
              return Text('no hay datos');
            }
            return Text(data.description);
          } else {
            return Text('data no found');
          }
        },
      ),
    );
  }
}
