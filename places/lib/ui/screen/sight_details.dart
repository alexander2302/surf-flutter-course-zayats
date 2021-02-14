import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/strings.dart' as strings;
import 'package:places/assets/colors.dart' as colors;
import 'package:places/assets/forms.dart' as forms;
import 'package:places/assets/images.dart' as images;
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
              SizedBox(
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
                    color: colors.whiteSecondary,
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
                  style: styles.normalS14W700whiteSecondary,
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
                  style: styles.normalS14W400whiteSecondary,
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
                    color: colors.getGreen(),
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
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 24,
                  bottom: 8,
                ),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    height: 40,
                    onPressed: () => {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          images.calendar,
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            strings.schedule,
                            style: TextStyle(
                              color: colors.whiteInactiveBlack,
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
                      children: <Widget>[
                        Image.asset(
                          images.heart2,
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            strings.favorites,
                            style: styles.normalS14W400whiteSecondary,
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
