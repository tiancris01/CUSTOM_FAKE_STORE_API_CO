import 'package:custom_fake_store_api_co/src/product_model.dart';
import 'package:dio/dio.dart';

// This is the API class that fetches the product data from the
//Fake Store API.
class CustomFakeStoreApiCo {
  final Dio _dio = Dio();

  // This method fetches the product data from the Fake Store API.
  //It returns a list of ProductModel objects.
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
