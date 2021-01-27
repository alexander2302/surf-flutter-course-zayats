import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;

class SightDetails extends StatelessWidget {
  const SightDetails({
    Key key,
    this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(sight.url),
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.topCenter,
                  ),
                  color: ConstantsColor.CARD_Background,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 24,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  sight.name,
                  maxLines: 2,
                  style: TextStyle(
                    color: ConstantsColor.WHITE_Secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 2,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  sight.getTypeName(),
                  style: TextStyle(
                    color: ConstantsColor.WHITE_Secondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 24,
                  left: 16,
                  right: 16,
                  bottom: 24,
                ),
                child: Text(
                  sight.details,
                  style: TextStyle(
                    color: ConstantsColor.WHITE_Secondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 328.0,
                  height: 48,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    onPressed: () => {},
                    color: ConstantsColor.GREEN_BTN,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/icon/routeBtn.png',
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            "ПОСТРОИТЬ МАРШРУТ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 16, right: 16, top: 24, bottom: 8),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    height: 40,
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/icon/calendar.png',
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            "Запланировать",
                            style: TextStyle(
                              color: ConstantsColor.INACTIVE_BLACK,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FlatButton(
                    height: 40,
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/icon/heart2.png',
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            "В Избранное",
                            style: TextStyle(
                              color: ConstantsColor.WHITE_Secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
