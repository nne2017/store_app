import 'dart:convert';

import 'package:http/http.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    final response =
        await get(Uri.parse('https://fakestoreapi.com/products/categories'));
    List<dynamic> data = jsonDecode(response.body);

    return data;
  }
}
