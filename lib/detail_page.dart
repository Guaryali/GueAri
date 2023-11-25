import 'package:carrinho/catalog_view_model.dart';
import 'package:carrinho/quantity_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    //recuperamos o id do produto que nos foi passado da outra tela
    final id = ModalRoute.of(context)!.settings.arguments as String;
    
    //recuperamos o view model do Provider
    final vm = Provider.of<CatalogViewModel>(context);

    //consultamos, na lista e produtos do catalog, pelo produto de id
    //que recebemos
    final product = vm.products.firstWhere((p) => p.id == id);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhe do Produto"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            info("Nome", product.name),
            info("Preço", product.salePriceFormatted),
            info("Estoque", "${product.stock}"),
            const QuantityWidget(),
          ],
        ),
      ),
    );
  }

  Widget info(String label, String info) => Row(
    children: [
      SizedBox(
        width: 100,
        child: Text(label),
      ),
      Text(info)
    ],
  );
}