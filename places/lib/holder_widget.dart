import 'package:flutter/material.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;
import 'package:places/ui/screen/visiting_screen.dart';

/// This is the stateful widget that the main application instantiates.
class HolderWidget extends StatefulWidget {
  HolderWidget({Key key}) : super(key: key);

  @override
  _HolderWidgetState createState() => _HolderWidgetState();
}

/// This is the private State class that goes with HolderWidget.
class _HolderWidgetState extends State<HolderWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const Widget _visitingScreen = VisitingScreen();

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'List\nwill be here\n(temp value, index 0)',
      style: optionStyle,
      textAlign: TextAlign.center,
    ),
    Text(
      'Map\nwill be here\n(temp value, index 1)',
      style: optionStyle,
      textAlign: TextAlign.center,
    ),
    _visitingScreen,
    Text(
      'Settings\nwill be here\n(temp value, index 3)',
      style: optionStyle,
      textAlign: TextAlign.center,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: ConstantsColor.whiteMain,
        unselectedItemColor: ConstantsColor.whiteSecondary,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.list_alt),
            activeIcon: Icon(Icons.list_alt_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.map_outlined),
            activeIcon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.favorite_outline_outlined),
            activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
