import 'package:carrinho/product.dart';
import 'package:flutter/material.dart';

class CatalogItemWidget extends StatelessWidget {
  final Product product;

  const CatalogItemWidget({super.key, 
  required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Text(product.name),
          ),
          Text(product.salePriceFormatted),
        ],
      ),
    );
  }
}