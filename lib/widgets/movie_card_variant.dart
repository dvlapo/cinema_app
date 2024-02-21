import 'package:cinema_app/utils/capitalize.dart';
import 'package:cinema_app/widgets/body_text.dart';
import 'package:flutter/material.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class MovieCardVariant extends StatelessWidget {
  final Map movie;

  const MovieCardVariant({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: Image.network(
            movie['image'],
            width: 115,
            height: 115,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
                side: const BorderSide(style: BorderStyle.none),
              ),
              label: BodyText(
                text: movie['genres'].elementAt(0).toString().capitalize(),
              ),
            ),
            Text(
              movie['title'],
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            RatingStars(
              rating: movie['rating'],
              editable: false,
            )
          ],
        )
      ],
    );
  }
}
