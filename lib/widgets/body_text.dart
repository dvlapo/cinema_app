import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final bool isBold;
  final double size;
  final Color? color;
  final TextOverflow? overflow;

  const BodyText({
    super.key,
    required this.text,
    this.isBold = false,
    this.size = 14,
    this.color,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color ?? Theme.of(context).colorScheme.onBackground,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
      overflow: overflow,
    );
  }
}
