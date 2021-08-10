import 'package:flutter/material.dart';

class MoviesScreen extends StatefulWidget {

  static const String route = '/movies';


  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  var _counter;

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async => false,

      child: Scaffold(

        appBar: AppBar(
          title: Text('Popular Movies'),
        ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                focusColor: Colors.green,
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                focusColor: Colors.red,
                onPressed: _decrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.remove),
              ),
            ],
          ))
      );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
}
