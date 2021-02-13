import 'package:flutter/material.dart';
import 'package:places/assets/constants_forms.dart' as ConstantsForms;
import 'package:places/assets/constants_text_style.dart' as ConstantsTextStyle;

/*
 * Класс отвечает за кастомный AppBar с предпочитаемым размером для родителя
*/
class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarCustom({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Padding(
        padding: ConstantsForms.left16Top64Right16,
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          maxLines: 2,
          style: ConstantsTextStyle.blackS32W700.copyWith(
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(136);
}
