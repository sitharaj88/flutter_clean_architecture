import 'package:flutter_clean_architecture/domain/entities/todo.dart';
import 'package:flutter_clean_architecture/domain/repositories/todo.dart';

class TodoRepositoryImpl implements TodoRepository {
  final List<Todo> _todos = [];
  @override
  Future<void> addTodo(Todo todo) async {
    _todos.add(todo);
  }

  @override
  Future<Todo> deleteTodoById(String id) async {
    final todo = _todos.firstWhere((element) => element.id == id);
    _todos.remove(todo);
    return todo;
  }

  @override
  Future<Todo> getTodoById(String id) async {
    return _todos.firstWhere((element) => element.id == id);
  }

  @override
  List<Todo> getTodos() {
    return _todos;
  }

  @override
  Future<Todo> markTodoAsCompleted(String id) async {
    final todo = _todos.firstWhere((element) => element.id == id);
    final todayToUpdate = Todo(
        id: todo.id,
        title: todo.title,
        description: todo.description,
        isCompleted: true);

    await deleteTodoById(id);
    await addTodo(todayToUpdate);
    return todo;
  }

  @override
  Future<Todo> updateTodo(Todo todo) async {
    final todayToUpdate = Todo(
        id: todo.id,
        title: todo.title,
        description: todo.description,
        isCompleted: todo.isCompleted);

    await deleteTodoById(todo.id);
    await addTodo(todayToUpdate);
    return todo;
  }

  @override
  Future<Todo> deleteTodo(Todo todo) async {
    _todos.remove(todo);
    return todo;
  }
}
