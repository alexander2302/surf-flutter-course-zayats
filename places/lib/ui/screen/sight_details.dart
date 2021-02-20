import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/forms.dart' as forms;
import 'package:places/assets/images.dart' as images;
import 'package:places/assets/strings.dart' as strings;
import 'package:places/assets/styles.dart' as styles;

//The class is responsible for displaying the "open" state of the
//attraction with action buttons
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
              //widget loading a picture with a progress bar
              _builgImageView(sight),
              Container(
                margin: forms.left16Top24Right16,
                child: Text(
                  sight.name,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                margin: forms.left16Top2Right16,
                child: Text(
                  sight.getTypeName(),
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                margin: forms.left16Top24Right16Bot24,
                child: Text(
                  sight.details,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              _buildRouteBtn(context),
              Container(
                margin: forms.left16Top24Right16Bot8,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              _buildBotBtns(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _builgImageView(Sight sight) {
    return SizedBox(
      height: 360,
      child: Image.network(
        sight.url,
        fit: BoxFit.fitHeight,
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
    );
  }

  Widget _buildRouteBtn(BuildContext context) {
    return Center(
      child: Container(
        width: 328.0,
        height: 48,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          onPressed: () => {
            print('onPressed btn Route'),
          },
          color: Theme.of(context).hintColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //Replace with a Row for horizontal icon + text
            children: <Widget>[
              Image.asset(
                images.route,
                width: 20,
                height: 18,
              ),
              Container(
                margin: forms.left8,
                child: Text(
                  strings.buildRoute,
                  style: styles.normalS14W700white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBotBtns(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          height: 40,
          onPressed: () => {
            print(' onPressed btn Calendar'),
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                images.calendar,
                width: 24,
                height: 24,
                color: Theme.of(context).accentColor,
              ),
              Container(
                margin: forms.left8,
                child: Text(
                  strings.schedule,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
        ),
        FlatButton(
          height: 40,
          onPressed: () => {
            print(' onPressed btn Favorite'),
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                images.heart2,
                width: 24,
                height: 24,
                color: Theme.of(context).accentColor,
              ),
              Container(
                margin: forms.left8,
                child: Text(
                  strings.favorites,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
