import 'package:todo/todo.dart';

class TodoRepository {
  static List<Todo> list() {
    return <Todo>[
      Todo(
        title: "Ministrar aula do PMI na turma A",
        responsible: "Eberson",
        dueDate: "10/11/2023",
        status: "DOING",
      ),
      Todo(
        title: "Ministrar aula do PMI na turma A",
        responsible: "Eberson",
        dueDate: "10/11/2023",
        status: "DONE",
      ),
      Todo(
        title: "Ministrar aula do PMI na turma A",
        responsible: "Eberson",
        dueDate: "10/11/2023",
        status: "TO_DO",
      ),
      Todo(
        title: "Ministrar aula do PMI na turma A",
        responsible: "Eberson",
        dueDate: "10/11/2023",
        status: "TO_DO",
      ),
    ];
  }
}
