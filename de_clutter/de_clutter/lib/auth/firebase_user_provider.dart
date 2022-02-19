import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DeClutterFirebaseUser {
  DeClutterFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

DeClutterFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DeClutterFirebaseUser> deClutterFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<DeClutterFirebaseUser>(
        (user) => currentUser = DeClutterFirebaseUser(user));
