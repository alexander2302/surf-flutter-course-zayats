import 'package:flutter/material.dart';
import 'package:places/assets/forms.dart' as forms;
import 'package:places/assets/styles.dart' as styles;

/// This is my class fo custom AppBar (with special parent's size)
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
        padding: forms.left16Top64Right16,
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          maxLines: 2,
          style: styles.normalS32W700.copyWith(
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(136);
}
