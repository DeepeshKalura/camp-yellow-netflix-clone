import 'package:flutter/material.dart';

class AboutEpisodeWidget extends StatelessWidget {
  const AboutEpisodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 91,
          height: 13,
          child: Text(
            'S6:E1 “Solaricks”',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontFamily: 'Libre Franklin',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          width: 350,
          height: 39,
          child: Text(
            'They’re back... and right where we left ‘em. Without a portal gun, Rick and Morty are stranded as they float through space in the ruins of the Citadel.',
            style: TextStyle(
              color: Color(0xFFF9F9F9),
              fontSize: 11,
              fontFamily: 'Libre Franklin',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          width: 45,
          height: 12,
          child: Text(
            'Starring:',
            style: TextStyle(
              color: Color(0xFFB3B3B3),
              fontSize: 11,
              fontFamily: 'Libre Franklin',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          width: 232,
          height: 12,
          child: Text(
            'Justing Roiland, chris Parnell, Spencer Grammer....',
            style: TextStyle(
              color: Color(0xFFB3B3B3),
              fontSize: 10,
              fontFamily: 'Libre Franklin',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          width: 30,
          height: 12,
          child: Text(
            'more',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontFamily: 'Libre Franklin',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          width: 134,
          height: 12,
          child: Text(
            'Dan Harmon, Justing Roiland',
            style: TextStyle(
              color: Color(0xFFB3B3B3),
              fontSize: 10,
              fontFamily: 'Libre Franklin',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          width: 54,
          height: 12,
          child: Text(
            'Creators:',
            style: TextStyle(
              color: Color(0xFFB3B3B3),
              fontSize: 11,
              fontFamily: 'Libre Franklin',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
