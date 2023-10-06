import 'package:flutter_clean_architecture/domain/entities/todo.dart';
import 'package:flutter_clean_architecture/domain/repositories/todo.dart';

abstract class GetTodosUseCase {
  List<Todo> execute();
}

abstract class AddTodoUseCase {
  Future<void> execute(Todo todo);
}

abstract class DeleteTodoUseCase {
  Future<void> execute(Todo todo);
}

class GetTodos implements GetTodosUseCase {
  final TodoRepository repository;

  GetTodos(this.repository);

  @override
  List<Todo> execute() {
    return repository.getTodos();
  }
}

class AddTodo implements AddTodoUseCase {
  final TodoRepository repository;

  AddTodo(this.repository);

  @override
  Future<void> execute(Todo todo) {
    return repository.addTodo(todo);
  }
}

class DeleteTodo implements DeleteTodoUseCase {
  final TodoRepository repository;

  DeleteTodo(this.repository);

  @override
  Future<void> execute(Todo todo) {
    return repository.deleteTodo(todo);
  }
}
