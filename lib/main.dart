import 'package:flutter/material.dart';

class aplicacao extends StatelessWidget {
  const aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dobro",
      theme: ThemeData(
        primarySwatch: Colors.cyan, 
      ),
      home: HomePage(),
    );
  }
}

class HomePage  extends StatelessWidget {
    final numeroController = TextEditingController();

    HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: numeroController,
              decoration:  const InputDecoration(
                labelText: "Informe um número", 
              ),
            ),
            ElevatedButton(
              onPressed:() => Dobro(context),
               child: const Text("Dobro!"),
               )
          ],
        ),
      ),
    );
  }

  void Dobro(BuildContext context) {
    final numero = int.parse(numeroController.text);
    final dobro = numero * 2;

    final message = "O dobro de $numero é $dobro!";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      )
    );
  }
}
void main() => runApp(const aplicacao());