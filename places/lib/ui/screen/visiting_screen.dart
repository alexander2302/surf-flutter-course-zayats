import 'package:flutter/material.dart';
import 'package:places/assets/constant_strings.dart' as ConstantsStrings;
import 'package:places/assets/constants_text_style.dart' as ConstantsTextStyle;
import 'package:places/ui/screen/visiting/visiting_list_visited.dart';
import 'package:places/ui/screen/visiting/visiting_list_want.dart';

/*
  * Данный класс отвечате за отображение табов с вкладками
  * - Хочу посетить
  * - Посещенные места
*/

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key key}) : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: ConstantsStrings.tabWantToVisit,
                ),
                Tab(
                  text: ConstantsStrings.tabPlaceVisited,
                ),
              ],
            ),
            title: Center(
              child: Text(
                ConstantsStrings.tabBarTitle,
                textAlign: TextAlign.center,
                style: ConstantsTextStyle.whiteMainS18W500,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              VisitingListWant(),
              VisitingListVisited(),
            ],
          ),
        ),
      ),
    );
  }
}
