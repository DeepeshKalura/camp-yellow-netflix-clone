import 'package:flutter/material.dart';

class EpisodesWidget extends StatelessWidget {
  const EpisodesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 360,
        height: 318,
        decoration: const BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            Positioned(
              left: 11,
              top: 16,
              child: SizedBox(
                width: 340,
                height: 147,
                child: Stack(
                  children: [
                    const Positioned(
                      left: 161,
                      top: 31,
                      child: Text(
                        'Solaricks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Libre Franklin',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 166,
                      top: 49.38,
                      child: SizedBox(
                        width: 26,
                        height: 20.81,
                        child: Text(
                          '22m',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 14,
                            fontFamily: 'EB Garamond',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      top: 91,
                      child: SizedBox(
                        width: 340,
                        height: 56,
                        child: Text(
                          'They’re back... and right where we left ‘em. Without a portal gun, Rick and Morty are stranded as they float through space in the ruins of the Citadel.',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 11,
                            fontFamily: 'Libre Franklin',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 154,
                        height: 84,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: -7,
                              child: Container(
                                width: 288,
                                height: 166.53,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/288x167"),
                                    fit: BoxFit.none,
                                  ),
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
                                  color: Colors.black
                                      .withOpacity(0.5099999904632568),
                                  shape: const OvalBorder(
                                    side: BorderSide(
                                        width: 1, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 11,
              top: 215,
              child: SizedBox(
                width: 340,
                height: 103,
                child: Stack(
                  children: [
                    Positioned(
                      left: 161,
                      top: 0,
                      child: Text(
                        'Rick: A Mort ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Libre Franklin',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 166,
                      top: 21,
                      child: SizedBox(
                        width: 26,
                        height: 20.81,
                        child: Text(
                          '22m',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 14,
                            fontFamily: 'EB Garamond',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 60,
                      child: SizedBox(
                        width: 340,
                        height: 43,
                        child: Text(
                          'When alien terrorists take over video aracde Blips and chitz, Rick asks Summer to help him out channeling “Die Hard,” a movie the teen’s never seen.',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 11,
                            fontFamily: 'Libre Franklin',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 6,
              top: 178,
              child: Container(
                width: 154,
                height: 84,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: -14,
                      top: -8,
                      child: Container(
                        width: 401,
                        height: 234,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://via.placeholder.com/401x234",
                            ),
                            fit: BoxFit.none,
                          ),
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
                            side: BorderSide(width: 1, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
