import 'package:flutter/material.dart';
import 'package:places/assets/images.dart' as images;
import 'package:places/ui/screen/sight_list_screen.dart';
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

  static const Widget _sightListScreen = SightListScreen();
  static const Widget _visitingScreen = VisitingScreen();

  static const List<Widget> _widgetOptions = <Widget>[
    _sightListScreen,
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          //list
          BottomNavigationBarItem(
            label: '',
            icon: _buildIcon(images.menuList, false),
            activeIcon: _buildIcon(images.menuListFull, true),
          ),
          //map
          BottomNavigationBarItem(
            label: '',
            icon: _buildIcon(images.menuMap, false),
            activeIcon: _buildIcon(images.menuMapFull, true),
          ),
          //heart
          BottomNavigationBarItem(
            label: '',
            icon: _buildIcon(images.menuHeart, false),
            activeIcon: _buildIcon(images.menuHeartFull, true),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: _buildIcon(images.menuSettings, false),
            activeIcon: _buildIcon(images.menuSettingsFull, true),
          ),
        ],
      ),
    );
  }

  //Loading image from resources and creating image
  Widget _buildIcon(String name, bool isActive) {
    return Image.asset(
      name,
      width: 24,
      height: 24,
      color: isActive
          ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
          : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
    );
  }
}
