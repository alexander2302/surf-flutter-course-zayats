import 'package:flutter/material.dart';
import 'package:places/ui/screen/visiting/sight_card_visiting_want.dart';
import 'package:places/mocks.dart';

//This widget is responsible for displaying / forming a list of places
//for the tab withs "I want to visit"
class VisitingListWant extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<VisitingListWant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  SightCardVisitingWant getCard(int index) {
    return new SightCardVisitingWant(
      sight: mocks[index],
    );
  }
}
