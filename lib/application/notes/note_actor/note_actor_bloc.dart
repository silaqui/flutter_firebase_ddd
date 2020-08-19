import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterfirebaseddd/domain/notes/i_note_repository.dart';
import 'package:injectable/injectable.dart';

import './bloc.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorBloc(this._noteRepository) : super(const NoteActorState.initial());

  @override
  Stream<NoteActorState> mapEventToState(NoteActorEvent event,) async* {
    yield const NoteActorState.actionInProgress();
    final possibleFailure = await _noteRepository.delete(event.note);
    yield possibleFailure.fold(
          (f) => NoteActorState.deleteFailure(f),
          (_) => const NoteActorState.deleteSuccess(),
    );
  }
}
