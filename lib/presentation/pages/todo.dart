import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/entities/todo.dart';
import 'package:flutter_clean_architecture/presentation/viewmodel/todo.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  TodoPageState createState() => TodoPageState();
}

class TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoViewModel>(context).todos;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                Provider.of<TodoViewModel>(context, listen: false)
                    .delete(todos[index]);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Provider.of<TodoViewModel>(context, listen: false).add(Todo(
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              title: 'Todo ${DateTime.now().millisecondsSinceEpoch}',
              description:
                  'Description ${DateTime.now().millisecondsSinceEpoch}',
              isCompleted: false));
        },
      ),
    );
  }
}
