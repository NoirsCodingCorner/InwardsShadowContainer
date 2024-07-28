library inwardsshadowcontainer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
/// Widget that adds a side shadow to its child.
class SideShadow extends StatelessWidget {
  final Color shadowColor;
  final Alignment beginalignment;
  final Alignment endalignment;
  final double maxIntensity;
  final double indent;
  final Widget child;

  /// Constructor for the SideShadow widget.
  const SideShadow({
    super.key,
    required this.shadowColor, // Color of the shadow
    required this.beginalignment, // Alignment where the shadow starts
    required this.endalignment, // Alignment where the shadow ends
    required this.child, // Child widget to apply shadow to
    this.maxIntensity = 0.3, // Maximum intensity of the shadow
    this.indent = 0.1, // Indentation of the shadow
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: SideShadowPainter(
        shadowColor: shadowColor,
        beginalignment: beginalignment,
        endalignment: endalignment,
        maxIntensity: maxIntensity,
        indent: indent,
      ),
      child: Container(
        child: child,
      ),
    );
  }
}
/// Custom painter to draw a side shadow effect.
class SideShadowPainter extends CustomPainter {
  final Color shadowColor; // Color of the shadow
  Alignment beginalignment; // Alignment where the shadow starts
  Alignment endalignment; // Alignment where the shadow ends
  double maxIntensity; // Maximum intensity of the shadow
  double indent; // Indentation value for the shadow

  /// Constructor for the SideShadowPainter.
  SideShadowPainter({
    required this.shadowColor,
    required this.beginalignment,
    required this.endalignment,
    required this.maxIntensity,
    required this.indent
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..shader = LinearGradient(
        begin: beginalignment,
        end: endalignment,
        colors: [
          shadowColor.withOpacity(maxIntensity),
          shadowColor.withOpacity(0.0),
        ],
        stops: [0.0, indent],
      ).createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height));

    final path = Path()
      ..moveTo(0.0, 0.0)
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(SideShadowPainter oldDelegate) => false;
}

