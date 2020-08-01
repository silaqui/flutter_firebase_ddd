import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfirebaseddd/application/notes/note_watcher/bloc.dart';
import 'package:flutterfirebaseddd/presentation/notes/notes_overview/widgets/critical_failure_display_widget.dart';
import 'package:flutterfirebaseddd/presentation/notes/notes_overview/widgets/note_card_widget.dart';

import 'error_note_card.dart';

class NotesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (BuildContext context, NoteWatcherState state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final note = state.notes[index];
                if (note.failureOption.isSome()) {
                  return ErrorNoteCard(note: note);
                }
                return NoteCard(note: note);
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (state) =>
              CriticalFailureDisplay(
                noteFailure: state.noteFailure,
              ),
        );
      },
    );
  }
}
