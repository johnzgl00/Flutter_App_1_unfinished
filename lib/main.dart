import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/screens/wrapper.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp(
));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),

      builder: (BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
        return StreamProvider<UserLocal>.value(
          value: AuthService().user,
           initialData: null,
           child: MaterialApp(
             debugShowCheckedModeBanner: false,
             home: Wrapper( ),
          ),
        );
      },
    );
  }
}
