import 'package:flutter/material.dart';
import 'Quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("You need to live in following of your heart", "Paulo cohehlo"),
    Quote("be your self since there is no one that cou", "james david"),
    Quote("if you need something diffrent you need tow", "william bruce"),
  ];

  // here is the function which is used to draw any text to the card

  Widget quotetemplate(quote) {
   
    return Card(

      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),

      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color:Colors.black,
            ),
          ),
          SizedBox(height: 11,),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[122],
            ),

          ),

        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title:  Text(
            "Quote List",
            style: TextStyle(
              fontSize: 20.0,
              color:Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber[400],
        ),
        body: Column(
          children: quotes.map((quote) => quotetemplate(quote)).toList(),
            
        ));
  }
}
