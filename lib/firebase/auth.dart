import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationService with ChangeNotifier {
  final _firebaseAuth = FirebaseAuth.instance;
  User? get user {
    return _firebaseAuth.currentUser;
  }

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  Future<String?> signIn(
      {required String email, required String password}) async {
    try {
      log("Signing in");
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Signed in successfully";
    } on FirebaseAuthException catch (e) {
      log("Error: $e");
      return e.message;
    }
  }

  Future<String?> signUp(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Signed in successfully";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<void> signOut() async {
    log("Signing out");
    await _firebaseAuth.signOut();
  }
}
