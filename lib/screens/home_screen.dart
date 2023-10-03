import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          Text('This is my name ${user?.displayName}'),
          Image.network('${user?.photoURL}'),
          OutlinedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
