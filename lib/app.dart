import 'package:flutter/material.dart';
import 'package:todo/home_page.dart';
import 'package:todo/todo_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Todos",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: "/",
        routes: {
          "/":(context) => const HomePage(),
          "/todo":(context) => const TodoPage(),
        },
    );
  }
}