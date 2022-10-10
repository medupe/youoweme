import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:wankolota/model/users/app_user.dart';
import 'package:wankolota/repository/general_provider.dart';
import 'package:wankolota/repository/user/i_user_repository.dart';

class UserRepository implements IUserRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Reader _read;
  UserRepository(this._read);

  @override
  AppUser? getUser() {
    final _firebaseUser = _read(firebaseAuthProvider).currentUser;
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
    await _read(firebaseAuthProvider).signInWithCredential(credential);
    // await _auth.signInWithCredential(credential);
  }

  @override
  Future signOutGoogle() async {
    await _googleSignIn.signOut();
    // await _auth.signOut();
    await _read(firebaseAuthProvider).signOut();
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
      _read(firebaseAuthProvider).authStateChanges();
}
