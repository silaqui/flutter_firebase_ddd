import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfirebaseddd/domain/auth/user.dart';
import 'package:flutterfirebaseddd/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
