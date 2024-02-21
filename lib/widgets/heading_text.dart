import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final bool isBold;
  const HeadingText({super.key, required this.text, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 32,
          color: Theme.of(context).colorScheme.onBackground,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
