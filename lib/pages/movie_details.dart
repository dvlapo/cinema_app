import 'package:cinema_app/utils/capitalize.dart';
import 'package:cinema_app/widgets/body_text.dart';
import 'package:cinema_app/widgets/genre_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class MovieDetails extends StatelessWidget {
  final Map<String, dynamic> movie;
  const MovieDetails({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const BodyText(
          text: 'Movie details',
          size: 20,
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/heart.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                movie['image'],
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < 2; i++)
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: GenreChip(
                            text: movie['genres']
                                .elementAt(i)
                                .toString()
                                .capitalize(),
                          ),
                        )
                    ],
                  ),
                  BodyText(
                    text: movie['title'],
                    size: 24,
                  ),
                  BodyText(
                    text: 'Director: ${movie['title']}',
                    size: 14,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  RatingStars(
                    rating: movie['rating'],
                    editable: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const BodyText(
                    text: 'Synopsis',
                    size: 22,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  BodyText(
                    text: movie['synopsis'],
                    size: 14,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Center(
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const BodyText(
                            text: 'Reservation',
                            isBold: false,
                            size: 24,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
