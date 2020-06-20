import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutterfirebaseddd/domain/notes/i_note_repository.dart';
import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';
import 'package:flutterfirebaseddd/infrastructure/notes/note_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:flutterfirebaseddd/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final Firestore _firestore;

  NoteRepository(this._firestore);

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy("serverTimestamp", descending: true)
        .snapshots()
        .map(
          (s) => right<NoteFailure, KtList<Note>>(
            s.documents
                .map((doc) => NoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((err) {
      if (err is PlatformException &&
          err.message.contains('PERMISSION_DENIED')) {
        return left(NoteFailure.unSufficientPermission());
      } else {
        return left(NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy("serverTimestamp", descending: true)
        .snapshots()
        .map((s) =>
            s.documents.map((doc) => NoteDto.fromFirestore(doc).toDomain()))
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(
            notes
                .where((note) =>
                    note.todos.getOrCrash().any((todoItem) => !todoItem.done))
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((err) {
      if (err is PlatformException &&
          err.message.contains('PERMISSION_DENIED')) {
        return left(NoteFailure.unSufficientPermission());
      } else {
        return left(NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
