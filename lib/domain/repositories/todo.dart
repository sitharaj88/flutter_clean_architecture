import '../entities/todo.dart';

abstract class TodoRepository {
  List<Todo> getTodos();

  Future<void> addTodo(Todo todo);

  Future<Todo> updateTodo(Todo todo);

  Future<Todo> deleteTodoById(String id);

  Future<Todo> getTodoById(String id);

  Future<Todo> markTodoAsCompleted(String id);

  Future<Todo> deleteTodo(Todo todo);
}
