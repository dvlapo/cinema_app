import 'package:cinema_app/widgets/body_text.dart';
import 'package:cinema_app/widgets/star_ratings.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Map movie;
  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.elliptical(10, 20),
            ),
            child: Image.network(
              movie['image'],
              width: 130,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 120,
            child: BodyText(
              text: movie['title'],
              overflow: TextOverflow.ellipsis,
            ),
          ),
          StarRatings(
            rating: movie['rating'],
            editable: false,
            color: Colors.amber,
            iconSize: 16,
          )
        ],
      ),
    );
  }
}
