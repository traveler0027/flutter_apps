import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white, 
      ),
      home: RandomWords(),
    ); 
  }//widget build
}//class MyApp

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}//class randomWords

class _RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[];
  final _saved = Set <WordPair>();
  final _biggerFont = TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],//actions
      ),
      body: _buildSuggestions(),
      );
  }//widget build

  void _pushSaved(){
    Navigator.of(context).push(
      MaterialPageRoute <void> (
        builder: (BuildContext context){
          final tiles = _saved.map(
            (WordPair pair){
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },//
          );//final tiles

          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList(); //final divided

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided,),
          );

        },//builder
        ),//materialPageRoute

    );//nav push
  }//_pushSaved

  Widget _buildSuggestions(){
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if(i.isOdd) return Divider(); /*2*/

        final index = i ~/2; /*3*/
        if (index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }//if
        return _buildRow(_suggestions[index]);
      }//item builder
      );
  }//widget _buildSuggestions

  Widget _buildRow(WordPair pair){
    final alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: (){
          setState(() {
            if(alreadySaved){
              _saved.remove(pair);
            } else{
              _saved.add(pair);
            }//if else
          });//setState
        },//onTap
    );
  }//widget _buildRow
}//class _RandomWordsState