import 'package:firebase_auth/firebase_auth.dart';
class auth{
 final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authstateChanges => _firebaseAuth.authStateChanges();

  Future<void> SignInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(email: email,
    password: password);
  }
  
  Future<void> CreateInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(email: email,
    password: password);
  }
  Future<void>signOut()async{
    await _firebaseAuth.signOut();
  }

}