import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'note_actor_state.freezed.dart';

@freezed
abstract class NoteActorState with _$NoteActorState {
  const factory NoteActorState.initial() = _Initial;
  const factory NoteActorState.actionInProgress() = _ActionInProgress;
  const factory NoteActorState.deleteFailure(NoteFailure noteFailure) = _DeleteFailure;
  const factory NoteActorState.deleteSuccess() = _DeleteSuccess;
}

