import 'package:flutter/material.dart';
import 'names.dart';
import 'namecard.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Names> names = [
    Names( property: "My name", name: "Osman"),
    Names( property: "My name", name: "Buğra"),
    Names( property: "My name", name: "Aydın"),
    Names( property: "My friend", name: "Çagatay"),
    Names( property: "My friend", name: "Kadir"),
    Names( property: "My friend", name: "Fatih"),
    Names( property: "My friend", name: "Osman"),
    Names( property: "My friend", name: "Doğan"),
    Names( property: "My friend", name: "Yahya"),
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
          children: names.map(( name ) => NameCard(names: name)).toList(),
        ),
      ),
    );
  }
}
