import 'package:admin_panel_for_library/src/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  const DefaultTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: UiKitTextStyles.titleStyle,
    );
  }
}
