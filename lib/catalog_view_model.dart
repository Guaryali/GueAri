import 'package:carrinho/product.dart';
import 'package:carrinho/product_repository.dart';
import 'package:flutter/cupertino.dart';

class CatalogViewModel extends ChangeNotifier{

  late List<Product> _products;

  CatalogViewModel(){
  _products = ProductRepository.list();
  }

  List<Product> get products => _products; 
}