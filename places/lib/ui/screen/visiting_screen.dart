import 'package:flutter/material.dart';
import 'package:places/assets/strings.dart' as strings;
import 'package:places/assets/styles.dart' as styles;
import 'package:places/ui/screen/visiting/visiting_list_visited.dart';
import 'package:places/ui/screen/visiting/visiting_list_want.dart';
import 'package:places/assets/colors.dart' as colors;

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
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            bottom: PreferredSize(
              preferredSize: Size(
                360.0,
                46.0,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 6,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).unselectedWidgetColor,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  width: 338,
                  height: 40,
                  child: TabBar(
                    tabs: [
                      Tab(
                        text: strings.tabWantToVisit,
                      ),
                      Tab(
                        text: strings.tabPlaceVisited,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            title: Center(
              child: Text(
                strings.tabBarTitle,
                textAlign: TextAlign.center,
                style: styles.normalS18W500.copyWith(
                  color: Theme.of(context).accentColor,
                ),
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
