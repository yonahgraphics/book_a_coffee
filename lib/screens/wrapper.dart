import 'package:book_coffiee/screens/authenticate/authenticate.dart';
import 'package:book_coffiee/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'authenticate/sign_in.dart';
class Wrapper extends StatelessWidget {
  // const Wrapper({Key? key}) : super(key: key);
  //
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
        return loggedIn? Home(): SignIn();
  }
}
