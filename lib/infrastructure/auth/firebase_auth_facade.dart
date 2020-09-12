import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';
import 'package:flutterfirebaseddd/domain/auth/auht_failure.dart';
import 'package:flutterfirebaseddd/domain/auth/i_auth_facade.dart';
import 'package:flutterfirebaseddd/domain/auth/user.dart';
import 'package:flutterfirebaseddd/domain/auth/value_objects.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_INVALID_EMAIL' || e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
