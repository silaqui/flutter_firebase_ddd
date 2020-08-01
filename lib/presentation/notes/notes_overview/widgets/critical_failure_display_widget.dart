import 'package:flutter/material.dart';
import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure noteFailure;

  const CriticalFailureDisplay({Key key, @required this.noteFailure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '🤔',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            noteFailure.maybeMap(
                unSufficientPermission: (_) => 'UnSufficient Permission',
                orElse: () => 'Unexpected Error'),
            style: const TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
