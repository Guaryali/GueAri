import 'package:flutter/material.dart';
import 'package:retomada/about_page.dart';
import 'home_page.dart';

class Aplicaocao  extends StatelessWidget {
  const Aplicaocao ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Retomada",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      // home: const HomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/about": (context) => const AboutPage(),
      },
       debugShowCheckedModeBanner: false, 
    );
    
  }
}
