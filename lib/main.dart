import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
    home: QuoteList(),
  )
);

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  List<Quote> quotes = [
    Quote(text:"Melhor 1 passáro na mão do que 2 na mão", author:"Barack Obama"),
    Quote(text:"Não tenho nada a declarar, apenas que você é lindo", author:"sua avó" ),
    Quote(text: "Ei. Olá marcos!", author:"Tom Wiseau"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          deleteFun: () {
            setState((){
              //Don't need to pass quotes because it's in func
              quotes.remove(quote);
            });
          }
        )).toList(),
      )
    );
  }
}

