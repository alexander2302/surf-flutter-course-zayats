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
          SizedBox(
            width: 328,
            height: 96,
            child: Container(
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
                      style: ConstantsTextStyle.whiteS14W700,
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
          ),

          //для пункта 2 : Добавьте отступ между между фотографиями и описанием...
          //можно было бы вот так разделить (с настройками) ->
          // const SizedBox(height: 16),
          //если моя реализация будет ошибочна - переделаю

          //данный ConstrainedBox содержит краткое описание
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 328,
              minHeight: 92,
              maxWidth: 328,
              maxHeight: 92,
            ),
            child: Container(
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
                      style: ConstantsTextStyle.whiteSecondaryS16W500,
                    ),
                    Text(
                      sight.details,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: ConstantsTextStyle.whiteSecondary2S14W400,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
