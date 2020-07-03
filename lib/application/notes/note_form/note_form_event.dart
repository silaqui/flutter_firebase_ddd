import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'note_form_event.freezed.dart';

@freezed
abstract class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialize(Option<Note> initialNoteOption) = _Initialize;
  const factory NoteFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory NoteFormEvent.colorChanged(Color color) = _ColorChanged;
  const factory NoteFormEvent.todosChanged(KtList<TodoItemPrimitives> todos) = _TodosChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
