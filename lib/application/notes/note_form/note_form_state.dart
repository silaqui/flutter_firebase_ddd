import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'note_form_state.freezed.dart';

@freezed
abstract class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    @required Note note,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        note: Note.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
