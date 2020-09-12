import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutterfirebaseddd/domain/auth/user.dart';
import 'package:flutterfirebaseddd/domain/core/value_object.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
