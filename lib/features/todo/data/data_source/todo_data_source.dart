import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_boilerplate/features/todo/data/model/todo.dart';

part 'todo_data_source.g.dart';

@Riverpod(keepAlive: true)
TodoDataSource todoDataSource(TodoDataSourceRef ref) {
  return TodoDataSourceImpl();
}

abstract class TodoDataSource {
  Future<List<Todo>> getTodos();
  Future<void> addTodo({required String description});
  Future<void> updateTodo({required Todo todo});
}

class TodoDataSourceImpl implements TodoDataSource {
  final List<Todo> _todos = [];

  TodoDataSourceImpl() {
    // Initialize with some mock data
    _todos.addAll([
      Todo.create(description: "Buy groceries"),
      Todo.create(description: "Walk the dog"),
      Todo.create(description: "Complete Flutter project"),
    ]);
  }

  @override
  Future<List<Todo>> getTodos() async {
    await Future.delayed(Duration(milliseconds: 500));
    return _todos;
  }

  @override
  Future<void> addTodo({required String description}) async {
    _todos.add(
      Todo.create(
        description: description,
        isCompleted: false,
      ),
    );
  }

  @override
  Future<void> updateTodo({required Todo todo}) async {
    final index = _todos.indexWhere((element) => element.id == todo.id);
    _todos[index] = todo;
  }
}
