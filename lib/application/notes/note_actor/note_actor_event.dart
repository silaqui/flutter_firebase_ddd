import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'note_actor_event.freezed.dart';

@freezed
abstract class NoteActorEvent with _$NoteActorEvent{
  const factory NoteActorEvent.delete(Note note) = _Delete;
}
