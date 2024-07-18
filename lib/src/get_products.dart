import 'package:custom_fake_store_api_co/src/product_model.dart';
import 'package:dio/dio.dart';

class CustomFakeStoreApiCo {
  final Dio _dio = Dio();

  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      final List<dynamic> data = response.data;
      return data.map((json) => ProductModel.fromJson(json)).toList();
    } on DioException {
      rethrow;
    }
  }
}
