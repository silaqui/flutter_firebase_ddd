import 'package:flutterfirebaseddd/domain/auth/value_objects.dart';
import 'package:flutterfirebaseddd/domain/notes/todo_item.dart';
import 'package:flutterfirebaseddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_presentation_classes.freezed.dart';

@freezed
abstract class TodoItemPrimitives implements _$TodoItemPrimitives {
  const TodoItemPrimitives._();

  const factory TodoItemPrimitives({
    @required UniqueId id,
    @required String name,
    @required bool done,
  }) = _TodoItemPrimitives;

  factory TodoItemPrimitives.empty() => TodoItemPrimitives(
        id: UniqueId(),
        name: '',
        done: false,
      );

  factory TodoItemPrimitives.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitives(
      id: todoItem.id,
      name: todoItem.name.getOrCrash(),
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: id,
      name: TodoName(name),
      done: done,
    );
  }
}
