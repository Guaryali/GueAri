import 'package:carrinho/catalog_item_widget.dart';
import 'package:carrinho/catalog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CatalogViewModel>(context);
    final products = vm.products;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) => CatalogItemWidget(
          product: products[index],
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}