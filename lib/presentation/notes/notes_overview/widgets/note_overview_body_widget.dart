import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfirebaseddd/application/notes/note_watcher/bloc.dart';

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
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  );
                }
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                );
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (_) => Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
        );
      },
    );
  }
}
