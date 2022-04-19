import 'package:book_coffiee/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // Creating an instance of our AuthService class
  final AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        elevation: 0,
        title: Text("SignIn book coffee"),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: MaterialButton(
                color: Colors.brown[400],
                child: Text(
                  "SignIn Anonymously",
                  style: TextStyle(color: Colors.white),
                ),

                // This function either returns a firebase user or null is signIn didn't work
                onPressed: () async {
                  // Dynamic since we can get a valid user or null
                  dynamic result = await _auth.signInAnon();
                  if (result != null) {
                    print("SignedIn");
                    print(result.uid);
                  } else {
                    print("Error!");
                  }
                })),
      ),
    );
  }
}
