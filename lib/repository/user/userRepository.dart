import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uome/core/helper/exceptions.dart';
import 'package:uome/model/sign_in/sign_in.dart';
import 'package:uome/model/sign_up/sign_up.dart';
import 'package:uome/model/users/app_user.dart';
import 'package:uome/repository/general_provider.dart';
import 'package:uome/repository/user/i_user_repository.dart';

class UserRepository implements IUserRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Ref _ref;
  UserRepository(this._ref);

  @override
  AppUser? getUser() {
    final _firebaseUser = _ref.read(firebaseAuthProvider).currentUser;
    if (_firebaseUser == null) return null;
    final _appUser =
        AppUser(userID: _firebaseUser.uid, userName: _firebaseUser.displayName);

    return _appUser;
  }

  @override
  Future saveGoogleUserInfomration() async {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    await _ref.read(firebaseAuthProvider).signInWithCredential(credential);
    // await _auth.signInWithCredential(credential);
  }

  @override
  Future signOutGoogle() async {
    // await _googleSignIn.signOut();
    // await _auth.signOut();
    await _ref.read(firebaseAuthProvider).signOut();
    // await _read(googleAuthProvider).signOut();
  }

  @override
  Future saveFacebookUserInfomration() async {
    // Trigger the sign-in flow
    //  final status = await Permission.storage.request();
    /*  final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);*/
  }

  @override
  Future signOutFacebook() {
    throw UnimplementedError();
  }

  @override
  Stream<User?> get authStateChanges =>
      _ref.read(firebaseAuthProvider).authStateChanges();

  @override
  Future signUpWithUsernameAndPassword(SignUpRequest signup) async {
    try {
      UserCredential userCredential = await _ref
          .read(firebaseAuthProvider)
          .createUserWithEmailAndPassword(
              email: signup.email, password: signup.password);

      await userCredential.user!.updateDisplayName(signup.displayName);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw WeakPasswordException();
      } else if (e.code == 'email-already-in-use') {
        throw EmailExistException();
      } else {
        throw UserRegistrationException(message: e.message);
      }
    } catch (e) {
      throw UserRegistrationException(message: "Error occured");
    }
  }

  @override
  Future signInWithUsernameAndPassword(SignInRequest signInRequest) async {
    try {
      await _ref.read(firebaseAuthProvider).signInWithEmailAndPassword(
          email: signInRequest.email, password: signInRequest.password);
    } on FirebaseAuthException catch (e) {
      throw UserRegistrationException(message: e.message);
    } catch (e) {
      throw UserRegistrationException(message: "Error occured");
    }
  }
}
