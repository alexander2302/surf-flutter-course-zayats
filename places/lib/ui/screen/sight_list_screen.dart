import 'package:flutter/material.dart';

/*
  * class for the application screen "List of Interests"
  * (will display a list with places around the user)
*/

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first AppBar'),
      ),
      body: Center(child: Text('You have pressed the button $_counter times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
