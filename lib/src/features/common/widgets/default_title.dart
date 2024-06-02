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
      style: TextStyle(
        fontSize: 26,
        color: Colors.black.withOpacity(0.8),
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
