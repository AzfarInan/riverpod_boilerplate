import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_boilerplate/features/todo/data/model/todo.dart';
import 'package:riverpod_boilerplate/features/todo/domain/use_case/add_todo_use_case.dart';
import 'package:riverpod_boilerplate/features/todo/domain/use_case/get_todo_use_case.dart';
import 'package:riverpod_boilerplate/features/todo/domain/use_case/update_todo_use_case.dart';

part 'todo_list_notifier.g.dart';

@riverpod
class TodoListNotifier extends _$TodoListNotifier {
  // ignore: avoid_public_notifier_properties
  List<Todo> todoList = [];

  @override
  Future<void> build() async {
    try {
      state = const AsyncLoading();
      final todos = await ref.watch(getTodosUseCaseProvider.future);
      todoList = todos;
      state = AsyncData(todoList);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> addTodo(String description) async {
    try {
      state = const AsyncLoading();
      await ref.read(addTodoUseCaseProvider(description).future);
      await build();
      state = AsyncData(todoList);
    } catch (error) {
      state = AsyncData(error);
    }
  }

  Future<void> updateTodo(Todo todo) async {
    try {
      state = const AsyncLoading();
      await ref.read(updateTodoUseCaseProvider(todo).future);
      todoList[todoList.indexWhere((element) => element.id == todo.id)] = todo;
      state = AsyncData(todoList);
    } catch (error) {
      state = AsyncData(error);
    }
  }
}
