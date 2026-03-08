import 'package:dio/dio.dart';
import 'package:ejercicio_clase/const/product_const.dart';
import 'package:ejercicio_clase/model/product_model.dart';

class ProductService {
  final _dio = Dio();

  Future<List<ProductModel>> getProduct() async {

    final response = await _dio.get(productConst);

    if (response.statusCode == 200) {

      final data = response.data;

      final List list = data["items"];   

      return list.map((e) => ProductModel.fromJson(e)).toList();
    }

    return [];
  }
}