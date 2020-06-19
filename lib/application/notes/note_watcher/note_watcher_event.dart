import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'note_watcher_event.freezed.dart';

@freezed
abstract class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NoteWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStarted;
  const factory NoteWatcherEvent.noteReceived(Either<NoteFailure, KtList<Note>> failureOrNotes) = _NoteReceived;
}
