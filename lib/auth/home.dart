import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage."),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 50),
              textStyle: TextStyle(fontSize: 18),
              primary: Colors.lightBlue,
              onPrimary: Colors.white),
          onPressed: () {
            logOut();
            // LoginScreen();
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}

logOut() {
  FirebaseAuth.instance.signOut();
}
