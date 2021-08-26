import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wankolota/model/users/app_user.dart';
import 'package:wankolota/repository/user/i_user_repository.dart';

class UserRepository implements IUserRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Future<AppUser> getUser() async {
    User? firebaseUser = FirebaseAuth.instance.currentUser;

    final _appUser =
        AppUser(userID: firebaseUser!.uid, userName: firebaseUser.displayName);

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
    await _auth.signInWithCredential(credential);
  }

  @override
  Future signOutGoogle() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
