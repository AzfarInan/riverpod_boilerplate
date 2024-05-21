import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_boilerplate/features/todo/data/model/todo.dart';
import 'package:riverpod_boilerplate/features/todo/domain/repository/todo_repository.dart';

part 'update_todo_use_case.g.dart';

@riverpod
class UpdateTodoUseCase extends _$UpdateTodoUseCase {
  @override
  Future<void> build(Todo todo) async {
    final repository = ref.watch(todoRepositoryProvider);
    await repository.updateTodo(todo);
  }
}
