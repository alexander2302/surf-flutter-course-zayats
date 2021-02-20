import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/forms.dart' as forms;
import 'package:places/assets/images.dart' as images;
import 'package:places/assets/styles.dart' as styles;

//This class helps in visualizing tab for places we want to visit
class SightCardVisitingWant extends StatelessWidget {
  const SightCardVisitingWant({
    Key key,
    this.sight,
  }) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('onTap card -> ' + sight.name);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).unselectedWidgetColor,
          borderRadius: forms.radAll16,
        ),
        margin: forms.top16,
        child: Column(
          children: [
            _buildCardHeared(sight),
            _buildCardDescription(sight, context),
          ],
        ),
      ),
    );
  }
}

//This Widget contains category name and buttons
Widget _buildCardHeared(Sight sight) {
  return ClipRRect(
    borderRadius: forms.radTopLett16TopRight16,
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
            margin: forms.left16Top16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 210,
                    minWidth: 210,
                  ),
                  child: Container(
                    child: Text(
                      sight.getTypeName(),
                      maxLines: 2,
                      style: styles.normalS14W700white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.only(
                    left: 10,
                    bottom: 20,
                  ),
                  icon: Image.asset(
                    images.calendarWhite,
                    color: Colors.white,
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    print('click calendar btn for -> ' + sight.name);
                  },
                ),
                IconButton(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 1,
                    right: 15,
                  ),
                  icon: Image.asset(
                    images.union,
                    color: Colors.white,
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    print('click delete btn for -> ' + sight.name);
                  },
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
Widget _buildCardDescription(Sight sight, BuildContext context) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 328,
      minHeight: 92,
      maxWidth: 328,
    ),
    child: Container(
      alignment: Alignment.topLeft,
      child: Container(
        margin: forms.all16,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              sight.name,
              maxLines: 2,
              style: Theme.of(context).textTheme.headline5,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 28,
                maxHeight: 28,
              ),
              child: Padding(
                padding: forms.top2,
                child: Text(
                  //TODO: will be replaced (temporary value)
                  "Запланировано на 12 окт. 2020",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            Text(
              //TODO: will be replaced (temporary value)
              "закрыто до 09:00",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: styles.normalS14W400Secondary2,
            )
          ],
        ),
      ),
    ),
  );
}
