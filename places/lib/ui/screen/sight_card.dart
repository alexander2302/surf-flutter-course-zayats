import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;
import 'package:places/assets/constants_forms.dart' as ConstantsForms;
import 'package:places/assets/constants_image.dart' as ConstantsImage;
import 'package:places/assets/constants_text_style.dart' as ConstantsTextStyle;

/*
  * this class helps in visualizing a card with a summary of an unknown place  
*/

class SightCard extends StatelessWidget {
  const SightCard({
    Key key,
    this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ConstantsForms.top16,
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
              color: ConstantsColor.cardBackground,
              borderRadius: ConstantsForms.radTopLett16TopRight16,
            ),
            child: Container(
              margin: ConstantsForms.left16Top16,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    sight.getTypeName(),
                    maxLines: 1,
                    style: ConstantsTextStyle.whiteTitleStyle,
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 20),
                    icon: new Image.asset(
                      ConstantsImage.heart,
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
              color: ConstantsColor.cardBackground,
              borderRadius: ConstantsForms.radBotLeft16BotRight16,
            ),
            child: Container(
              margin: ConstantsForms.all16,
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    sight.name,
                    maxLines: 2,
                    style: ConstantsTextStyle.whiteSecondaryTitleStyle,
                  ),
                  Text(
                    sight.details,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: ConstantsTextStyle.whiteSecondary2TitleStyle,
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
