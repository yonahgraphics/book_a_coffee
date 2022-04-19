import 'package:book_coffiee/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  // Convert firebase user into custom user object
  AppUser _userFromFirebaseUser(User user){
    var userId = user.uid;
   return AppUser(uid: userId!=null? userId:"");
  }

  // Create Firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;


  // Auth change User stream
  Stream<AppUser?> get user{
    return _auth.authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
  }

  //SignIn Anonymously
Future signInAnon() async{
  try
  {
    UserCredential userCredential = await _auth.signInAnonymously();
    User? user = userCredential.user;
    return _userFromFirebaseUser(user!);
  }
  catch(e)
    {
      print(e.toString());
      return null;
    }

  }


  //SignIn with email and password

  //Register with email and password

  //SignOut

}