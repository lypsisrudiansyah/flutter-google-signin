
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// Initialize GoogleSignIn and Firebase Auth Services
final GoogleSignIn googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;

String name;
String email;
String imageUrl;
String phoneNumber;
 
/// Sign In Method With Google
Future<String> signInWithGoogle() async {
  
  //* Initialize Authentication Properties
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken
  );
  final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;

  //* Checking if email, displayName and photoUrl is null
  assert(user.email != null);
  assert(user.displayName != null);
  assert(user.photoUrl != null);
  
  //* Assign to user properties
  name = user.displayName;
  email = user.email;
  imageUrl = user.photoUrl;
  phoneNumber = user.phoneNumber;

  //* Only taking the first name of a User
  if (name.contains(" ")) {
    name = name.substring(0, name.indexOf(" "));
  }

  /* assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid); */

  return 'signInWithGoogle succeeded : $user';
}

/// Sign Out Method
void signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Successfully Signed Out");
}