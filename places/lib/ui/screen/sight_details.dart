import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/assets/constant_strings.dart' as ConstantsStrings;
import 'package:places/assets/constants_color.dart' as ConstantsColor;
import 'package:places/assets/constants_forms.dart' as ConstantsForms;
import 'package:places/assets/constants_image.dart' as ConstantsImage;
import 'package:places/assets/constants_text_style.dart' as ConstantsTextStyle;

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
                    color: ConstantsColor.whiteSecondary,
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
                  style: ConstantsTextStyle.whiteSecondaryS14W700,
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
                  style: ConstantsTextStyle.whiteSecondaryS14W400,
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
                    color: ConstantsColor.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Image.asset(
                          ConstantsImage.route,
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: ConstantsForms.left8,
                          child: Text(
                            ConstantsStrings.buildRoute,
                            style: ConstantsTextStyle.whiteS14W700,
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
                          ConstantsImage.calendar,
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            ConstantsStrings.schedule,
                            style: TextStyle(
                              color: ConstantsColor.blackInactive,
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
                          ConstantsImage.heart2,
                          width: 20,
                          height: 18,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            ConstantsStrings.favorites,
                            style: ConstantsTextStyle.whiteSecondaryS14W400,
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
