import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:retomada/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String word = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: MenuDrawer(),
      ),
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/about");
            }, 
            icon: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Palavra aleatória"),
              Text(word),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      word= generateWordPairs().first.asCamelCase;
                    });
                  },
                  child: const Text("Gerar"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}