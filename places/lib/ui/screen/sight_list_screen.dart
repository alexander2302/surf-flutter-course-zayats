import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/assets/strings.dart' as strings;
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/custom_widgets/app_bar_custom.dart';

//This class for the application screen "List of Interests"
//(will display a list with places around the user)
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: strings.appBarTitleL),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getCard(0),
            getCard(1),
            getCard(2),
            getCard(3),
          ],
        ),
      )),
    );
  }

  SightCard getCard(int index) {
    return SightCard(
      sight: mocks[index],
    );
  }
}
