import 'package:ejercicio_clase/model/product_model.dart';
import 'package:ejercicio_clase/service/product_service.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductModel> products = [];

  @override
  void initState() {
    super.initState();
    getProductos();
  }

  void getProductos() async {
    final List<ProductModel> temporal = await ProductService().getProduct();
    setState(() {
      products = temporal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Column(
              children: [
                Text(products[index].name),
                SizedBox(height: 30,),
                Image.network(products[index].imagen),
                Text(products[index].gender),
                SizedBox(height: 30,),
                Text(products[index].description),
              ],
            ),
          );
        },
      ),
    );
  }
}
