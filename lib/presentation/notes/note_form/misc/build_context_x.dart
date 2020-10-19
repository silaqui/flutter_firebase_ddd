import 'package:flutter/widgets.dart';
import 'package:flutterfirebaseddd/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension FormTodosX on BuildContext {
  KtList<TodoItemPrimitives> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;

  set formTodos(KtList<TodoItemPrimitives> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}
