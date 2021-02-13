import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/constants_color.dart' as ConstantsColor;
import 'package:places/assets/constants_forms.dart' as ConstantsForms;
import 'package:places/assets/constants_image.dart' as ConstantsImage;
import 'package:places/assets/constants_text_style.dart' as ConstantsTextStyle;

//This class helps in visualizing a card with a summary of an unknown place
class SightCard extends StatelessWidget {
  const SightCard({
    Key key,
    this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        //scolor: ConstantsColor.gray,
        borderRadius: ConstantsForms.radAll16,
      ),
      margin: ConstantsForms.top16,
      child: Column(
        children: [
          _buildCardHeared(sight),
          _buildCardDescription(sight),
        ],
      ),
    );
  }
}

//This Widget contains the category name and the favorite button
Widget _buildCardHeared(Sight sight) {
  return ClipRRect(
    borderRadius: ConstantsForms.radTopLett16TopRight16,
    child: Stack(
      children: <Widget>[
        SizedBox(
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
        SizedBox(
          width: 328,
          height: 96,
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
                  icon: Image.asset(
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
      ],
    ),
  );
}

//This ConstrainedBox contains a short description
Widget _buildCardDescription(Sight sight) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 328,
      minHeight: 92,
      maxWidth: 328,
      maxHeight: 92,
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
  );
}
