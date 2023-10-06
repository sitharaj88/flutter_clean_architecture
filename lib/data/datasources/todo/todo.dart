import 'package:flutter_clean_architecture/domain/entities/todo.dart';

abstract class TodoDataSource {
  Future<List<Todo>> getTodos();

  Future<void> addTodo(Todo todo);

  Future<Todo> updateTodo(Todo todo);

  Future<Todo> deleteTodoById(String id);

  Future<Todo> getTodoById(String id);

  Future<Todo> markTodoAsCompleted(String id);
}
