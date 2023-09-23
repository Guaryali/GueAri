import 'package:flutter/material.dart';
import 'package:lista/language.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final languages = [
    Language(name: "C", favorite: false),
    Language(name: "C#", favorite: false),
    Language(name: "C++", favorite: false),
    Language(name: "Java", favorite: false),
    Language(name: "Python", favorite: false),
    Language(name: "JavaScript", favorite: false),
    Language(name: "Dart", favorite: false),
    Language(name: "SQL", favorite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemCount: languages.length,
          itemBuilder: (context, index) =>  createItem(languages[index]),
          separatorBuilder:  (context, index) => const Divider(
            height: 40,
          ),
        ),
      ),
    );
  }

  Widget createItem(Language language) {
      final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            language.name,
            style: theme.textTheme.titleMedium, 
          ),
          GestureDetector(
            onTap: () => markFavorite(language.name),
            child: Icon(
            language.favorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
            ),
          )
        ],
      ),    
    );
  }

  void markFavorite(String name){
    setState(() {
      for (var i = 0; i < languages.length; i++){
        if (languages[i].name == name){
          languages[i] = languages[i].markFavorite();
          break;
        }
      }
    
    
    });
  }
}