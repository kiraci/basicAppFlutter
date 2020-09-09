import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> names = [
    "Osman",
    "Buğra",
    "Aydın",
    "Çagatay",
    "Kadir",
    "Fatih",
    "Doğan",
    "Yahya"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text("Some Turkish Names"),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: Column(
          children: names.map(( name ) => Container( child: Text( name ), margin: EdgeInsets.only(top: 30.0),) ).toList(),
        ),
      ),
    );
  }
}
