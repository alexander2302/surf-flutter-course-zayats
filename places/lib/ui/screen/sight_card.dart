import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;

class SightCard extends StatelessWidget {
  const SightCard({
    Key key,
    this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          //описана верхняя картинка и тип
          Container(
            width: 328,
            height: 96,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(sight.url),
                fit: BoxFit.cover,
              ),
              color: ConstantsColor.CARD_Background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    sight.getTypeName(),
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 20),
                    icon: new Image.asset(
                      'assets/images/icon/heart.png',
                      width: 20,
                      height: 18,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),

          //здесь добавил краткое описание
          Container(
            width: 328,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: ConstantsColor.CARD_Background,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(16),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    sight.name,
                    maxLines: 2,
                    style: TextStyle(
                      color: ConstantsColor.WHITE_Secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    sight.details,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: ConstantsColor.WHITE_Secondary2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
