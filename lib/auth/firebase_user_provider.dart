import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlutterFlowDemoFirebaseUser {
  FlutterFlowDemoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FlutterFlowDemoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlutterFlowDemoFirebaseUser> flutterFlowDemoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FlutterFlowDemoFirebaseUser>(
            (user) => currentUser = FlutterFlowDemoFirebaseUser(user));
