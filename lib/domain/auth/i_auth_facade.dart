import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterfirebaseddd/domain/auth/user.dart';
import 'package:flutterfirebaseddd/domain/auth/value_objects.dart';

import 'auht_failure.dart';

abstract class IAuthFacade {

  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
