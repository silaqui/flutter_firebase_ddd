import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/notes/i_note_repository.dart';
import 'package:flutterfirebaseddd/domain/notes/note.dart';
import 'package:flutterfirebaseddd/domain/notes/note_failure.dart';
import 'package:flutterfirebaseddd/infrastructure/core/firestore_helpers.dart';
import 'package:flutterfirebaseddd/infrastructure/notes/note_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _firestore;

  NoteRepository(this._firestore);

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy("serverTimestamp", descending: true)
        .snapshots()
        .map(
          (s) => right<NoteFailure, KtList<Note>>(
        s.docs
                .map((doc) => NoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((err) {
      if (err is FirebaseException &&
          err.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.unSufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy("serverTimestamp", descending: true)
        .snapshots()
        .map((s) => s.docs.map((doc) => NoteDto.fromFirestore(doc).toDomain()))
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(
            notes
                .where((note) =>
                    note.todos.getOrCrash().any((todoItem) => !todoItem.done))
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((err) {
      if (err is FirebaseException &&
          err.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.unSufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection
          .doc(noteDto.id)
          .update(noteDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.unSufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection
          .doc(noteDto.id)
          .update(noteDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.unSufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.id.getOrCrash();
      await userDoc.noteCollection.document(noteId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.unSufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }
}
