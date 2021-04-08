import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomeScreen/projects.dart';
import 'package:flutter_app/screens/editTask/editTask.dart';
import 'package:flutter_app/screens/profile/profilePage.dart';
import 'package:flutter_app/services/auth.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final AuthService _auth = AuthService();
  List<Project> projects = [
    Project(title: 'Task1', subTask1: 'SubTask1', subTask2: 'Clean This'),
    Project(title: 'Task1', subTask1: 'SubTask1', subTask2: 'Clean This'),
    Project(title: 'Task1', subTask1: 'SubTask1', subTask2: 'Clean This'),
    Project(title: 'Task1', subTask1: 'SubTask1', subTask2: 'Clean This'),
    Project(title: 'Task1', subTask1: 'SubTask1', subTask2: 'Clean This'),
    Project(title: 'Task1', subTask1: 'SubTask1', subTask2: 'Clean This'),
    Project(title: 'Task1', subTask1: 'SubTask1', subTask2: 'Clean This'),
  ];

  Widget  projectTemplate(project){
    return ProjectCard(project: project);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.person),
                    color: Colors.amber[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    }                ),
                IconButton(
                  icon: Icon(Icons.lock_outlined),
                  color: Colors.red[800],
                  onPressed: () async {
                    await _auth.signOut();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings_applications_outlined),
                  color: Colors.amber[600],
                  onPressed: (){},
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  'Sen',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40,
                  ),
                ),
                Text(
                  'Log',
                  style: TextStyle(
                    color: Colors.amber[600],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Column(
              children:
                projects.map((project) =>projectTemplate(project)).toList(),

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditTasks()),
          );
        },
        child: const Icon(Icons.edit),
        backgroundColor: Colors.amber[600],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {

  final Project project;
  ProjectCard({this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width - 20, height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child:Column(
              children: [
              Text(
                project.title,
                style: TextStyle(
                 fontSize: 20,
                 color: Colors.amber[600],
                ),
              ),
              Text(
               project.subTask1,
                 style: TextStyle(
                  fontSize: 10,
                  color: Colors.white70,
                ),
              ),
              Text(
                project.subTask2,
                style: TextStyle(
                 fontSize: 10,
                 color: Colors.white70,
               ),
              ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width - 20, height: 10),
        ],
      ),
    );
  }
}
