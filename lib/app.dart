import 'package:carrinho/catalog_view_model.dart';
import 'package:carrinho/detail_page.dart';
import 'package:carrinho/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CatalogViewModel>(
          create: (_) => CatalogViewModel(),
        ),
      ],
      child: MaterialApp(
        title: "Carrinho",
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          "/detail":(context) =>  const DetailPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}