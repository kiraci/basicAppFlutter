import 'package:flutter/material.dart';
import 'names.dart';

class NameCard extends StatelessWidget {

  final Names names; 

  NameCard({ this.names });

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
          ]
        ),
      ),
    );
  }
}
