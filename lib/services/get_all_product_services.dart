import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/models/product_model.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProducts() async {
    final response = await get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
