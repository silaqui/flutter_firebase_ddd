import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'note_watcher_state.freezed.dart';

@freezed
abstract class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState.initial() = _Initial;
  const factory NoteWatcherState.loadInProgress() = _LoadInProgress;
  const factory NoteWatcherState.loadSuccess(KtList<Note> notes) = _LoadSuccess;
  const factory NoteWatcherState.loadFailure(NoteFailure noteFailure) = _LoadFailure;
}

