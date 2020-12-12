import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'RobotoBlack'),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: MyFirstWidget(),
      home: MySecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    _counter++;
    print('_counter = $_counter');

    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    _counter++;
    print('_counter = $_counter');

    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}

/*
 * OLD CODE (after project creation)
*/

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
