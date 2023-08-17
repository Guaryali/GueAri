import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Column(
            children: const [
              Text("Atividade"),
              Text("Avaliativa"),
            ],
          ),
          Column(
            children: const [
              Text("Ariela"),
              Text("Gustavo"),
            ],
          ),
          Column(
            children: const [
              Text("2H3")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Agosto"),
              Text("2023"),
            ],
          ),
        ],
      ),
    
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atividade Avaliativa",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());