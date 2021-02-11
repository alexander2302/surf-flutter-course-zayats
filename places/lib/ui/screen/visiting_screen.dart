import 'package:flutter/material.dart';
import 'package:places/assets/constant_strings.dart' as ConstantsStrings;
import 'package:places/assets/constants_text_style.dart' as ConstantsTextStyle;
import 'package:places/assets/constants_color.dart' as ConstantsColor;
import 'package:places/ui/screen/visiting/visiting_list_visited.dart';
import 'package:places/ui/screen/visiting/visiting_list_want.dart';

//This class is responsible for displaying tabs with tabs
// - I want to visit
// - Places visited
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
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size(
                360.0,
                40.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: ConstantsColor.gray,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                width: 328,
                height: 40,
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  unselectedLabelColor: ConstantsColor.blackInactive,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: ConstantsStrings.tabWantToVisit,
                    ),
                    Tab(
                      text: ConstantsStrings.tabPlaceVisited,
                    ),
                  ],
                ),
              ),
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
