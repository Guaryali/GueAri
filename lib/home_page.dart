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
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            "/detail",
            arguments: products[index].id,
          ),
          child: CatalogItemWidget(
            product: products[index],
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
