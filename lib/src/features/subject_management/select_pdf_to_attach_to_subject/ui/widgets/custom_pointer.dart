import 'dart:ui';

import 'package:flutter/rendering.dart';

enum MarkerPosition {
  left,
  right,
  top,
  bottom,
}

final class MarkerPainter extends CustomPainter {
  MarkerPainter({
    this.position = MarkerPosition.left,
  }) {
    _height = 55;
    _width = 20;
  }

  final MarkerPosition position;
  late final double _height;
  late final double _width;

  List<Offset> setPosition(Size size) {
    return switch (position) {
      MarkerPosition.left => [
          Offset(1, size.height / 2),
          Offset(-_width, size.height / 2 + _height / 2),
          Offset(1, size.height / 2 + _height),
        ],
      MarkerPosition.right => [
          Offset(size.width, size.height / 2 - _height / 2),
          Offset(size.width + _width, size.height / 2),
          Offset(size.width, size.height / 2 + _height / 2),
        ],
      MarkerPosition.top => [
          Offset(size.width / 2 - _height / 2, 1),
          Offset(size.width / 2, -_width),
          Offset(size.width / 2 + _height / 2, 1),
        ],
      MarkerPosition.bottom => [
          Offset(size.width / 2 - _height / 2, size.height),
          Offset(size.width / 2, size.height + _width),
          Offset(size.width / 2 + _height / 2, size.height),
        ],
    };
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = const Color.fromRGBO(230, 230, 230, 1);

    canvas.drawVertices(
      Vertices(VertexMode.triangleFan, setPosition(size)),
      BlendMode.color,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
