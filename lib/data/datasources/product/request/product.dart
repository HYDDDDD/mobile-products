import 'dart:convert';
import 'package:flutter_application_2/constants/api.dart';
import 'package:flutter_application_2/data/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Product>> getProduct() async {
    var response = await http
        .get(Uri.parse(ApiConstant.baseURL + ApiConstant.productEndpoint));

    if (response.statusCode == 200) {
      final List info = jsonDecode(response.body);
      return info.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Unable to fetch products from the REST API');
    }
  }
}

final productProvider = Provider<ApiServices>((ref) => ApiServices());
