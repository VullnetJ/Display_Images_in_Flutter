import 'package:flutter/material.dart';
// import 'immutable_widget.dart';
import 'text_layout.dart';


class BasicScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Welcome to my App'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(Icons.add_a_photo),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/beach.png', 
           ),
          TextLayout(),
        ],
      ),
      
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Text("This is a Drawer "),
      ),
      ),
    );
  }
}

