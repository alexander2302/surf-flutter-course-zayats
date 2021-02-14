import 'package:flutter/material.dart';
import 'package:places/holder_widget.dart';
import 'package:places/mocks.dart';

import 'package:places/ui/screen/sight_details.dart';
import 'package:places/assets/strings.dart' as strings;
import 'package:places/ui/screen/res/themes.dart' as themes;
// import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  generateTestSights();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    themes.initTheme(isDark: true);
    // themes.initTheme(isDark: false);

    return MaterialApp(
      theme: themes.getThemeData(),
      title: strings.appTitle,
      home: SightDetails(sight: mocks[3]),
      // home: SightListScreen(),
      // home: HolderWidget(),
    );
  }
}
