import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/notes/i_note_repository.dart';
import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import './bloc.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherBloc(this._noteRepository);

  StreamSubscription<Either<NoteFailure, KtList<Note>>> _streamSubscription;

  @override
  NoteWatcherState get initialState => const NoteWatcherState.initial();

  @override
  Stream<NoteWatcherState> mapEventToState(
    NoteWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const NoteWatcherState.loadInProgress();
      await _streamSubscription?.cancel();
      _streamSubscription = _noteRepository.watchAll().listen((event) {
        add(NoteWatcherEvent.noteReceived(event));
      });
    }, watchUncompletedStarted: (e) async* {
      yield const NoteWatcherState.loadInProgress();
      await _streamSubscription?.cancel();
      _streamSubscription = _noteRepository.watchUncompleted().listen((event) {
        add(NoteWatcherEvent.noteReceived(event));
      });
    }, noteReceived: (e) async* {
      yield e.failureOrNotes.fold(
        (failure) => NoteWatcherState.loadFailure(failure),
        (notes) => NoteWatcherState.loadSuccess(notes),
      );
    });
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
