import 'package:flutter/material.dart';
import 'package:places/holder_widget.dart';
import 'package:places/mocks.dart';
import 'package:places/assets/constant_strings.dart' as ConstantsStrings;
import 'package:places/ui/screen/res/themes.dart' as Theme;
import 'package:places/ui/screen/sight_details.dart';
// import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  generateTestSights();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: Theme.lightTheme,
      theme: Theme.darkTheme,
      title: ConstantsStrings.appTitle,
      home: SightDetails(sight: mocks[3]),
      // home: SightListScreen(),
      // home: HolderWidget(),
    );
  }
}
