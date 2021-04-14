//TODO login and registration

import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:thebugs_prototype/services/middleware.dart';

class Auth extends StatelessWidget {
  @override

  final auth = FirebaseAuth.instance;
  final db = DatabaseService();

  Widget build(BuildContext context) {
    var user = Provider.of<FirebaseUser>(context);

    // TODO: implement build
    return Scaffold(
      body: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
                child: Text('Login'),
                onPressed: auth.signInAnonymously,
              ),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Create'),
                  onPressed: () => db.createUser(user)),
            )
          ]
      ),
    );
  }

}