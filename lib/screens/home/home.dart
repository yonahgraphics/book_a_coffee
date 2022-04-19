import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(39.2),
              ),
              height: 200,
                width: 200,
                child: Center(
                    child:Text("H O M E")),
            )
        )
    );
  }
}
