import 'package:cinema_app/widgets/body_text.dart';
import 'package:flutter/material.dart';

class GenreChip extends StatelessWidget {
  final String text;
  const GenreChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(200),
        side: const BorderSide(style: BorderStyle.none),
      ),
      label: BodyText(
        text: text,
      ),
    );
  }
}
