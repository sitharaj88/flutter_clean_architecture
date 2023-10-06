import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/data/repositories/todo/todo.dart';
import 'package:flutter_clean_architecture/domain/entities/todo.dart';
import 'package:flutter_clean_architecture/domain/repositories/todo.dart';
import 'package:flutter_clean_architecture/domain/usecases/todo/todos.dart';

class TodoViewModel extends ChangeNotifier {
  var _todos = <Todo>[];
  final TodoRepository _todoRepository = TodoRepositoryImpl();
  GetTodosUseCase? _getTodosUseCase;
  AddTodoUseCase? _addTodoUseCase;
  DeleteTodoUseCase? _deleteTodoUseCase;

  TodoViewModel() {
    _getTodosUseCase = GetTodos(_todoRepository);
    _addTodoUseCase = AddTodo(_todoRepository);
    _deleteTodoUseCase = DeleteTodo(_todoRepository);
  }

  get todos => _todos;

  add(Todo todo) async {
    await _addTodoUseCase!.execute(todo);
    _todos = List.from(_getTodosUseCase!.execute());
    notifyListeners();
  }

  delete(Todo todo) async {
    await _deleteTodoUseCase!.execute(todo);
    _todos = List.from(_getTodosUseCase!.execute());
    notifyListeners();
  }
}
