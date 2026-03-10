import 'package:ejercicio_clase/config/router/router.dart';
import 'package:ejercicio_clase/model/product_model.dart';
import 'package:ejercicio_clase/service/product_service.dart';
import 'package:flutter/material.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ProductService().getProduct(),
      builder: ( _ , snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }else if(snapshot.hasError){
          return Center(child: Text('error'));
        }else if(snapshot.hasData){
          final List<ProductModel> data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext _, int index) {
              return ListTile(
                onTap: () {
                  router.push('/product/${data[index].id}');
                },
                title: Text(data[index].name),
                subtitle: Text(data[index].description),
              );
            },
          );
        }else{
          return Text('data no found');
        }
      },
    );
  }
}