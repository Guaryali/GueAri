import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)?.settings.arguments as Todo;
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Title: ${todo.title}"),
            Text("responsável: ${todo.responsible}"),
            Text("Title: ${todo.dueDate}"),
            Text("Title: ${todo.status}"),
          ],
        ),
      ),
    );
  }
}