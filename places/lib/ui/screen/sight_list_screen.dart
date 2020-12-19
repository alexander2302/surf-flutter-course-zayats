import 'package:flutter/material.dart';

/*
  * class for the application screen "List of Interests"
  * (will display a list with places around the user)
*/

const String title = 'Список \nинтересных мест';
const TextStyle textStyleForTitle = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontWeight: FontWeight.w700,
  fontFamily: 'RobotoBlack',
  height: 1.12,
);

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

/*
 * В качетсве заголовка использовал AppBar, но его title настроить согласно 
 * дизайну не удалось, уперся в то что title нельзя пододвинуть ниже по высоте
 * (маржины, падинги и многие другие способы не сработали, тогда 
 * вспомнил что в уроке 4.1 расказывали о PreferredSize, с его помощью получилось)
 * не уверен это правильный подход или нет
*/
class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false, //disable center position for title
        elevation: 0, //disable shadow
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(64),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            child: Text(
              title,
              style: textStyleForTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
