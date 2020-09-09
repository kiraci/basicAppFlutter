import 'package:flutter/material.dart';
import 'names.dart';

class NameCard extends StatelessWidget {

  final Names names; 
  final Function delete;

  NameCard({ this.names, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              names.property,
              style: TextStyle(
                color: Colors.red,
                fontSize: 15.0
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              names.name,
              style: TextStyle(
                fontFamily: 'IndieFlower',
                color: Colors.red,
                fontSize: 25.0
              ),
            ),
            SizedBox( height: 10.0),
            FlatButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text("Delete this friend"),
              ),
          ]
        ),
      ),
    );
  }
}
