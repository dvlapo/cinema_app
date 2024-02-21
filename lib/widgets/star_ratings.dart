import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StarRatings extends HookWidget {
  const StarRatings({
    Key? key,
    required this.rating,
    this.iconSize = 30,
    required this.editable,
    this.color = Colors.amber,
  }) : super(key: key);

  final double iconSize;

  final Color color;
  final bool editable;
  final double rating;

  @override
  Widget build(BuildContext context) {
    final movieReview = useState(rating);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: editable
                ? () {
                    movieReview.value = 1;
                  }
                : () {},
            child: movieReview.value > 0 && movieReview.value < 1
                ? Icon(
                    Icons.star_half_rounded,
                    size: iconSize,
                    color: color,
                  )
                : Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: movieReview.value >= 1 && movieReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    movieReview.value = 2;
                  }
                : () {},
            child: movieReview.value <= 1 || movieReview.value >= 2
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: (movieReview.value > 1 || movieReview.value >= 2) &&
                            movieReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : movieReview.value > 1 && movieReview.value < 2
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    movieReview.value = 3;
                  }
                : () {},
            child: movieReview.value <= 2 || movieReview.value >= 3
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: (movieReview.value > 2 || movieReview.value >= 3) &&
                            movieReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : movieReview.value > 2 && movieReview.value < 3
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    movieReview.value = 4;
                  }
                : () {},
            child: movieReview.value <= 3 || movieReview.value >= 4
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: (movieReview.value > 3 || movieReview.value >= 4) &&
                            movieReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : movieReview.value > 3 && movieReview.value < 4
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    movieReview.value = 5;
                  }
                : () {},
            child: movieReview.value <= 4 || movieReview.value >= 5
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: movieReview.value > 4 && movieReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : movieReview.value > 4 && movieReview.value < 5
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
        ],
      ),
    );
  }
}
