import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_boilerplate/features/todo/data/model/todo.dart';
import 'package:riverpod_boilerplate/features/todo/domain/repository/todo_repository.dart';

part 'get_todo_use_case.g.dart';

@riverpod
class GetTodosUseCase extends _$GetTodosUseCase {
  @override
  Future<List<Todo>> build() async {
    print("GetTodosUseCase");
    final repository = ref.watch(todoRepositoryProvider);
    return await repository.getTodos();
  }
}