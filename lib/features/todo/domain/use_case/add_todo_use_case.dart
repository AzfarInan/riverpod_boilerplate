import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_boilerplate/features/todo/domain/repository/todo_repository.dart';

part 'add_todo_use_case.g.dart';

@riverpod
class AddTodoUseCase extends _$AddTodoUseCase {
  @override
  Future<void> build(String description) async {
    final repository = ref.watch(todoRepositoryProvider);
    await repository.addTodo(description);
  }
}