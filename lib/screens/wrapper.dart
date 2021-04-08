import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/screens/HomeScreen/home.dart';
import 'package:flutter_app/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserLocal>(context);

    // home or authenticate
    if (user == null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
