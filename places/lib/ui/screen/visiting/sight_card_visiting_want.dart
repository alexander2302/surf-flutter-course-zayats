import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

import 'package:places/assets/constants_color.dart' as ConstantsColor;
import 'package:places/assets/constants_forms.dart' as ConstantsForms;
import 'package:places/assets/constants_image.dart' as ConstantsImage;
import 'package:places/assets/constants_text_style.dart' as ConstantsTextStyle;

/*
  * this class helps in visualizing a card with a summary of an unknown place  
*/

class SightCardVisitingWant extends StatelessWidget {
  const SightCardVisitingWant({
    Key key,
    this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ConstantsColor.gray,
        borderRadius: ConstantsForms.radAll16,
      ),
      margin: ConstantsForms.top16,
      child: Column(
        children: [
          //данный Widget содержит название категории и кнопку изббранное
          ClipRRect(
            borderRadius: ConstantsForms.radTopLett16TopRight16,
            child: new Stack(
              children: <Widget>[
                new SizedBox(
                  width: 328,
                  height: 96,
                  child: Image.network(
                    sight.url,
                    fit: BoxFit.fitWidth,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes
                              : null,
                        ),
                      );
                    },
                  ),
                ),
                new SizedBox(
                  width: 328,
                  height: 96,
                  child: new Container(
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
                        new Stack(children: <Widget>[
                          IconButton(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                              right: 28,
                            ),
                            icon: new Image.asset(
                              ConstantsImage.calendarWhite,
                              color: Colors.white,
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                              left: 42,
                              right: 20,
                            ),
                            icon: new Image.asset(
                              ConstantsImage.union,
                              color: Colors.white,
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {},
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //описана верхняя картинка и тип

          //данный ConstrainedBox содержит краткое описание
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 328,
              minHeight: 92,
              maxWidth: 328,
            ),
            child: Container(
              alignment: Alignment.topLeft,
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
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 28,
                        maxHeight: 28,
                      ),
                      child: Padding(
                        padding: ConstantsForms.top2,
                        child: Text(
                          "Запланировано на 12 окт. 2020",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: ConstantsTextStyle.greenS14W400,
                        ),
                      ),
                    ),
                    Text(
                      "закрыто до 09:00",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: ConstantsTextStyle.whiteSecondary2S14W400,
                    )
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
