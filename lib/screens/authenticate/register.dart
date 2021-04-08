import 'package:flutter/material.dart';
import 'package:flutter_app/screens/loading/loading.dart';
import 'package:flutter_app/services/auth.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
//text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'EMAIL',
                style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 2,
                ),
              ),
              TextFormField(
                validator: (val) => val.isEmpty ? 'Enter Email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 50),
              Text(
                'PASSWORD',
                style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 2,
                ),
              ),
              TextFormField(
                validator: (val) => val.length < 6 ? 'Enter Bigger Password' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
                obscureText: true,
              ),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              RaisedButton(
                color: Colors.amber[600],

                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState.validate()){
                    setState(() => loading = true);
                    dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                    if (result == null){
                      setState(() => error = 'error');
                    }
                  }
                },
              ),
              TextButton(
                child: Text(
                  'Already have an account? Sign In',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  widget.toggleView();
                },
              ),
              SizedBox(height: 50),
              Text(
                error,
                style: TextStyle(
                  color: Colors.red[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
