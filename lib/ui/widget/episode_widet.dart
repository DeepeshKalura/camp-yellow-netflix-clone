import 'package:flutter/material.dart';

import '../../utils/about.dart';

class EpisodesWidget extends StatelessWidget {
  const EpisodesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const rAMI = "assets/pictures/rick_and_morty.png";
    const speed = "assets/pictures/speed.png";
    return const Column(
      children: [
        EpisodeCardWidget(
          image: speed,
          title: 'Solaricks',
          about: AboutUtil.aboutFirst,
        ),
        SizedBox(height: 20),
        EpisodeCardWidget(
          about: AboutUtil.aboutSecond,
          image: rAMI,
          title: 'A Rick: A Mort Well Lived',
        ),
        SizedBox(height: 20),
        EpisodeCardWidget(
          image: speed,
          title: 'Morty and Rick in the Morning',
          about: AboutUtil.aboutFirst,
        ),
      ],
    );
  }
}

class EpisodeCardWidget extends StatelessWidget {
  const EpisodeCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.about,
  });

  final String image;
  final String title;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 154,
              height: 84,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: -7,
                    child: SizedBox(
                      width: 288,
                      height: 166.53,
                      child: Image.asset(
                        image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 62,
                    top: 27,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.5099999904632568),
                        shape: const OvalBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Libre Franklin',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '22m',
                    style: TextStyle(
                      color: Color(0xFFB3B3B3),
                      fontSize: 14,
                      fontFamily: 'EB Garamond',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          about,
          style: const TextStyle(
            color: Color(0xFFB3B3B3),
            fontSize: 11,
            fontFamily: 'Libre Franklin',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ],
    );
  }
}
