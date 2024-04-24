import 'package:flutter_application_2/data/datasources/product/services/product.dart';
import 'package:flutter_application_2/data/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productDataProvider = FutureProvider<List<Product>>((ref) async {
  return ref.watch(productProvider).getProduct();
});
