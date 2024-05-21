import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boilerplate/features/todo/data/model/todo.dart';
import 'package:riverpod_boilerplate/features/todo/presentaiton/provider/todo_list_notifier.dart';

class TodoListPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListNotifierProvider);
    final todoList = ref.watch(todoListNotifierProvider.notifier).todoList;

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: state.when(
        data: (_) => ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            final todo = todoList[index];
            return InkWell(
              onTap: () {
                ref.read(todoListNotifierProvider.notifier).updateTodo(
                      Todo(
                        id: todo.id,
                        description: todo.description,
                        isCompleted: !todo.isCompleted,
                      ),
                    );
              },
              child: ListTile(
                title: Text(todo.description),
                trailing: Icon(
                  todo.isCompleted
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                ),
              ),
            );
          },
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Error: $error'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(todoListNotifierProvider.notifier).addTodo('New Todo');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
