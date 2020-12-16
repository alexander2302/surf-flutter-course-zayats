import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'RobotoBlack'),
      // home: const MyHomePage(title: 'Flutter1'),
      // home: MyFirstWidget(title: 'Flutter Demo Home Page'),
      home: MySecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  final String title;

  MyFirstWidget({Key key, this.title}) : super(key: key);

  int _counter = 0;
  BuildContext _context1;

  @override
  Widget build(BuildContext context) {
    _counter++;
    _context1 = context;
    print('_counter = $_counter');

    return Container(
      child: Center(
        //child: Text('Hello'),
        child: MaterialButton(
          child: Text("Test getRuntimeType()"),
          onPressed: () {
            getRuntimeType();
          },
        ),
      ),
    );
  }

  Type getRuntimeType() {
    print('getRuntimeType');
    return _context1.runtimeType;
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int _counter = 0;
  BuildContext _context2;

  @override
  Widget build(BuildContext context) {
    _counter++;
    _context2 = context;
    print('_counter = $_counter');

    return Container(
      child: MaterialButton(
        child: Text("Test getRuntimeType2()"),
        onPressed: () {
          getRuntimeType2();
        },
      ),
    );
  }

  Type getRuntimeType2() {
    print('getRuntimeType2');
    return _context2.runtimeType;
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
