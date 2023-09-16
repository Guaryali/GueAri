import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dobro",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage  extends StatelessWidget {
  final numero1Controller = TextEditingController();
  final numero2Controller = TextEditingController();

   HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
              const Text("Escreva os numeros desejados:", style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.bold
              ),),
             Container(
              margin: const EdgeInsets.only(bottom: 20),
               child: SizedBox(
                width: 400,
                 child: Column(
                  children: [
                   TextField(
                   controller: numero1Controller,
                   decoration: const InputDecoration(
                     labelText: "Numero 1:"
                   ),
                 ),
                 TextField(
                   controller: numero2Controller,
                   decoration: const InputDecoration(
                     labelText: "Numero 2:"
                   ),
                 ),
                 
                  ]
            ),
               ),
             ),
            
            SizedBox(
              height: 50,
              width: 200,
                child: ElevatedButton(
                  onPressed: () => comparacao(context),
                  child: const Text("Maior!"),
                ),
            ),
          ],
        ),
        ),
      ),
    );
  }


void comparacao(BuildContext context) {
  final numero1 = int.parse(numero1Controller.text);
  final numero2 = int.parse(numero2Controller.text);
  
  if (numero1 > numero2){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("O numero maior é : $numero1"),
      )
    );
  }else if (numero2 > numero1){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("O numero maior é : $numero2"),
      )
    );
   }
   else if (numero2 == numero1){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Os numeros são iguais!"),
      )
    );
   }
}
}

void main() => runApp(const Aplicacao());
