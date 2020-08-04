import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/auth_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/auth_event.dart';
import 'package:flutterfirebaseddd/application/auth/auth_state.dart';
import 'package:flutterfirebaseddd/application/notes/note_actor/bloc.dart';
import 'package:flutterfirebaseddd/application/notes/note_watcher/bloc.dart';
import 'package:flutterfirebaseddd/injection.dart';
import 'package:flutterfirebaseddd/presentation/notes/notes_overview/widgets/note_overview_body_widget.dart';
import 'package:flutterfirebaseddd/presentation/notes/notes_overview/widgets/uncompleted_switch.dart';
import 'package:flutterfirebaseddd/presentation/routes/router.gr.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  unauthenticated: (_) => ExtendedNavigator.of(context)
                      .pushReplacementNamed(Routes.signInPage),
                  orElse: () {});
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.noteFailure.map(
                        unexpected: (_) => 'Unexpected error',
                        unableToUpdate: (_) => 'Impossible error',
                        unSufficientPermission: (_) => 'Insufficient permission'),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: <Widget>[
              UncompletedSwitch()],
          ),
          body: NotesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //TODO Navigate to NoteFormPage
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
