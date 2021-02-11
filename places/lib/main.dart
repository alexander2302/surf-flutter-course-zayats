import 'package:flutter/material.dart';
import 'package:places/holder_widget.dart';
import 'package:places/mocks.dart';
import 'package:places/assets/constant_strings.dart' as ConstantsStrings;

void main() {
  generateTestSights();

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantsStrings.appTitle,
      // home: SightListScreen(),
      // home: SightDetails(sight: mocks[1]),
      // home: VisitingScreen(),
      home: HolderWidget(),
    );
  }
}