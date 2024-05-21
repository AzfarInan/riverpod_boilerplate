import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_boilerplate/features/todo/data/data_source/todo_data_source.dart';
import 'package:riverpod_boilerplate/features/todo/data/model/todo.dart';
import 'package:riverpod_boilerplate/features/todo/data/repository/todo_repository_impl.dart';

part 'todo_repository.g.dart';

@Riverpod(keepAlive: true)
TodoRepository todoRepository(TodoRepositoryRef ref) {
  final dataSource = ref.watch(todoDataSourceProvider);
  return TodoRepositoryImpl(dataSource);
}

abstract class TodoRepository {
  Future<List<Todo>> getTodos();
  Future<void> addTodo(String description);
  Future<void> updateTodo(Todo todo);
}
