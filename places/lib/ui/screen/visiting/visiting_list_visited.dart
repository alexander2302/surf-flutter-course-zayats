import 'package:flutter/material.dart';
import 'package:places/ui/screen/visiting/sight_card_visiting_visited.dart';
import 'package:places/mocks.dart';

//This widget is responsible for displaying / forming a list of places
//for the tab withs "Visited Places"
class VisitingListVisited extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<VisitingListVisited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

  SightCardVisitingVisited getCard(int index) {
    return new SightCardVisitingVisited(
      sight: mocks[index],
    );
  }
}
