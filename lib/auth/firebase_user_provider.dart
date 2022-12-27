import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EtonFirebaseUser {
  EtonFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EtonFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EtonFirebaseUser> etonFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EtonFirebaseUser>(
      (user) {
        currentUser = EtonFirebaseUser(user);
        return currentUser!;
      },
    );
