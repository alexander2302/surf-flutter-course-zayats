import 'package:flutter/material.dart';
import 'package:places/ui/screen/visiting/sight_card_visiting_want.dart';
import '../../../mocks.dart';

class VisitingListVisited extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

/*
 * Данный виджет отвечает за отображение/формирование списка мест для таба 
 * "Посещенные места"
*/
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

  SightCardVisitingWant getCard(int index) {
    return new SightCardVisitingWant(
      sight: mocks[index],
    );
  }
}
