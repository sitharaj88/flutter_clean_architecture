import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/entities/todo.dart';
import 'package:flutter_clean_architecture/presentation/viewmodel/todo.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: Consumer<TodoViewModel>(
        builder: (context, todoViewModel, child) {
          return ListView.builder(
            itemCount: todoViewModel.todos.length,
            itemBuilder: (context, index) {
              final todo = todoViewModel.todos[index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text(todo.description),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    todoViewModel.delete(todo);
                  },
                ),
              );
            },
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
