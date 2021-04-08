import 'package:flutter/material.dart';

class EditTasks extends StatefulWidget {
  @override
  _EditTasksState createState() => _EditTasksState();
}

class _EditTasksState extends State<EditTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Edit Task'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
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
                    Icons.edit_outlined,
                    color: Colors.amber[600],
                    size: 60,
                  ),
                ),
              ],
            ),
            Divider(height: 30, color: Colors.black),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(
                      color: Colors.amber[600],
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Select Slot (1-7)',
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(
                      color: Colors.amber[600],
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(
                      color: Colors.amber[600],
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'SubTask1',
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(
                      color: Colors.amber[600],
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'SubTask2',
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {

                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.save,
                              color: Colors.amber[600],
                            ),
                            Text(
                              'Save',
                              style: TextStyle(
                                color: Colors.amber[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
