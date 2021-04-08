import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'infoPair.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int projectCount = 0;
  String levelWord = "";
  int levelWordCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('SenLog ID'),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Icon(
                  Icons.portrait_rounded,
                  color: Colors.amber[600],
                  size: 80,
                ),
              ),
            ],
          ),
          Divider(height: 40, color: Colors.black),
          Text(
            'Information',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InfoPair(text1: 'AUTH TYPE', text2: "Email"),
              InfoPair(text1: 'USER-ID', text2: "User-User"),
              InfoPair(text1: 'PROFESSION', text2: 'Coder',),
              Row(
                children: [
                  InfoPair(text1: 'LEVEL', text2: '$levelWord' ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: IconButton(
                      icon: Icon(Icons.plus_one),
                      iconSize: 30,
                      color: Colors.white70,
                      onPressed: (){
                        setState(() {
                          levelWordCount += 1;
                          print(levelWordCount);
                          if (levelWordCount == 1){
                            setState(()=> levelWord = "Beginner");
                          }else if(levelWordCount == 2){
                            setState(()=> levelWord = "Intermediate");
                          }else if(levelWordCount == 3){
                            setState(()=> levelWord = "Advanced");
                          }else{
                            setState(()=> levelWord = "Beginner");
                            setState(()=> levelWordCount = 1);
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InfoPair(text1: 'PROJECTS', text2: '$projectCount',),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: IconButton(
                      icon: Icon(Icons.plus_one),
                      iconSize: 30,
                      color: Colors.white70,
                      onPressed: (){
                        setState(() {
                          projectCount += 1;
                        });
                        },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

