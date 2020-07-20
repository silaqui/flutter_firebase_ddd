import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfirebaseddd/domain/auth/user.dart';
import 'package:flutterfirebaseddd/domain/core/value_object.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
