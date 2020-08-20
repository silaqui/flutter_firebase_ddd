import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfirebaseddd/application/notes/note_actor/bloc.dart';
import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/domain/notes/todo_item.dart';
import 'package:flutterfirebaseddd/presentation/routes/router.gr.dart';
import 'package:kt_dart/collection.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({
    Key key,
    @required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {
          ExtendedNavigator.of(context).pushNoteFormPage(editNote: note);
        },
        onLongPress: () {
          final noteActorBloc = context.bloc<NoteActorBloc>();
          _showDeletionDialog(context, noteActorBloc);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              note.body.getOrCrash(),
              style: const TextStyle(fontSize: 18),
            ),
            if (note.todos.length > 0) ...[
              const SizedBox(
                height: 4,
              ),
              Wrap(
                spacing: 8,
                direction: Axis.horizontal,
                children: <Widget>[
                  ...note.todos
                      .getOrCrash()
                      .map(
                        (todo) => TodoDisplay(
                      todo: todo,
                    ),
                  )
                      .iter,
                ],
              )
            ]
          ],
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, NoteActorBloc noteActorBloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Sel note'),
            content: Text(
              note.body.getOrCrash(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('CANCEL'),
              ),
              FlatButton(
                onPressed: () {
                  noteActorBloc.add(NoteActorEvent.delete(note));
                  Navigator.pop(context);
                },
                child: const Text('DELETE'),
              )
            ],
          );
        });
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem todo;

  const TodoDisplay({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          todo.done ? Icons.check_box : Icons.check_box_outline_blank,
          color: todo.done
              ? Theme.of(context).accentColor
              : Theme.of(context).disabledColor,
        ),
        Text(todo.name.getOrCrash())
      ],
    );
  }
}
