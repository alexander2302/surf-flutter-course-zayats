import 'package:flutter/material.dart';

/*
  * class for the application screen "List of Interests"
  * (will display a list with places around the user)
*/


const String titleLine1w1 = 'С';
const String titleLine1w2 = 'писок';
const String titleLine2w1 = '\nи';
const String titleLine2w2 = 'нтересных мест';

const TextStyle textStyleForTitle = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontWeight: FontWeight.w700,
  fontFamily: 'RobotoBlack',
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
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: RichText(
              text: TextSpan(
                style: textStyleForTitle,
                children: [
                  TextSpan(
                    children: [
                      TextSpan(
                        text: titleLine1w1,
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 171, 91),
                        ),
                      ),
                      TextSpan(
                        text: titleLine1w2,
                      )
                    ],
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                        text: titleLine2w1,
                        style: TextStyle(
                          color: Color.fromARGB(255, 248, 220, 94),
                        ),
                      ),
                      TextSpan(
                        text: titleLine2w2,
                      )
                    ],
                  ),
                ],
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
      ),
    );
  }
}
