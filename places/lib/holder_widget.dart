import 'package:flutter/material.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;
import 'package:places/assets/constants_image.dart' as ConstantsImage;
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
            icon: _buildIcon(ConstantsImage.navBarList, false),
            activeIcon: _buildIcon(ConstantsImage.navBarListFull, true),
          ),
          //map
          BottomNavigationBarItem(
            label: '',
            icon: _buildIcon(ConstantsImage.navBarMap, false),
            activeIcon: _buildIcon(ConstantsImage.navBarMapFull, true),
          ),
          //heart
          BottomNavigationBarItem(
            label: '',
            icon: _buildIcon(ConstantsImage.navBarHeart, false),
            activeIcon: _buildIcon(ConstantsImage.navBarHeartFull, true),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: _buildIcon(ConstantsImage.navBarSettings, false),
            activeIcon: _buildIcon(ConstantsImage.navBarSettingsFill, true),
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
