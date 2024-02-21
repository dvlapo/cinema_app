import 'package:cinema_app/global_variables.dart';
import 'package:cinema_app/pages/movie_details.dart';
import 'package:cinema_app/utils/capitalize.dart';
import 'package:cinema_app/widgets/body_text.dart';
import 'package:cinema_app/widgets/bottom_nav.dart';
import 'package:cinema_app/widgets/heading_text.dart';
import 'package:cinema_app/widgets/movie_card.dart';
import 'package:cinema_app/widgets/movie_card_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double iconWidth = 28;
  late String activeCategory;

  List<Map<String, dynamic>> categories = [
    {'emoji': '😎', 'name': 'action'},
    {'emoji': '🤠', 'name': 'adventure'},
    {'emoji': '😌', 'name': 'drama'},
    {'emoji': '🥰', 'name': 'romance'},
    {'emoji': '🚀', 'name': 'sci-fi'},
  ];

  @override
  void initState() {
    activeCategory = categories[0]['name'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/menu.svg',
              width: iconWidth,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/search.svg',
                width: iconWidth,
              ),
            ),
            // Gap
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/bell.svg',
                width: iconWidth,
              ),
            ),
          ],
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Heading
                const SizedBox(height: 10),
                const HeadingText(
                  text: 'Categories',
                ),

                const SizedBox(height: 20),
                // Filter chips
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      //
                      final category = categories[index];
                      final categoryName = '${category['name']}'.capitalize();
                      final text = '${category['emoji']} ' ' $categoryName';
                      //
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              activeCategory = category['name'];
                            });
                          },
                          child: Chip(
                            backgroundColor: activeCategory == category['name']
                                ? Theme.of(context).colorScheme.tertiary
                                : Theme.of(context).colorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200),
                              side: const BorderSide(style: BorderStyle.none),
                            ),
                            label: BodyText(
                              text: text,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Popular
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeadingText(
                      text: 'Popular',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),

                // Movies list
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return MovieDetails(movie: movies[index]);
                              },
                            ),
                          );
                        },
                        child: MovieCard(
                          movie: movies[index],
                        ),
                      );
                    },
                  ),
                ),

                // Recommended
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeadingText(
                      text: 'Recommended',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                MovieCardVariant(movie: movies[1])
              ],
            ),
          ),
        ),

        // Bottom nav
        bottomNavigationBar: const BottomNav());
  }
}
