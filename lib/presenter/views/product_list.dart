import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/models/product.dart';
import 'package:flutter_application_2/domain/repositories/product_provider.dart';
import 'package:flutter_application_2/presenter/widgets/item_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(productDataProvider);
    return Scaffold(
        body: data.when(
            data: (data) {
              List<Product> products = data.map((e) => e).toList();
              return Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return ItemCard(
                                image: products[index].image,
                                label: products[index].title,
                                price: products[index].price);
                          }))
                ],
              );
            },
            error: (err, s) => Text(err.toString()),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
