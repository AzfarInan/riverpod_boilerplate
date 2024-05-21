import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    String? id,
    required String description,
    @Default(false) bool isCompleted,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  /// Create a new Item with a generated UUID if no id is provided.
  factory Todo.create({required String description, bool isCompleted = false}) =>
      Todo(
        id: const Uuid().v4(),
        description: description,
        isCompleted: isCompleted,
      );
}
