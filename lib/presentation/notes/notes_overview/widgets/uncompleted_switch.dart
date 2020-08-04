import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutterfirebaseddd/application/notes/note_watcher/bloc.dart';

class UncompletedSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          context.bloc<NoteWatcherBloc>().add(
                toggleState.value
                    ? const NoteWatcherEvent.watchUncompletedStarted()
                    : const NoteWatcherEvent.watchAllStarted(),
              );
        },
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
            child: toggleState.value
                ? Icon(
                    Icons.check_box_outline_blank,
                    key: const Key("Outline"),
                  )
                : Icon(
                    Icons.indeterminate_check_box,
                    key: const Key("Indeterminate"),
                  )),
      ),
    );
  }
}
