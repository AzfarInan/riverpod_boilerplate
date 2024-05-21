import 'package:riverpod_boilerplate/features/todo/data/data_source/todo_data_source.dart';
import 'package:riverpod_boilerplate/features/todo/data/model/todo.dart';
import 'package:riverpod_boilerplate/features/todo/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoDataSource dataSource;

  TodoRepositoryImpl(this.dataSource);

  @override
  Future<List<Todo>> getTodos() async {
    return await dataSource.getTodos();
  }

  @override
  Future<void> addTodo(String description) async {
    return await dataSource.addTodo(description: description);
  }

  @override
  Future<void> updateTodo(Todo updatedTodo) async {
    return await dataSource.updateTodo(todo: updatedTodo);
  }
}
