import 'package:flutter/material.dart';
 
 class HomePage  extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); 
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Text("Atividade"),
                Text("Avaliação")
              ],
            ),
            Column(
              children: const [
                Text("Nome 1"),
                Text("Nome 2")
              ],
            ),
            Text(
              "2H3",
              style: theme.textTheme.headline3?.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.amber,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Agosto"),
                Text("2023"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout",
      theme: ThemeData(
        primarySwatch:  Colors.red,

      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
  
