import 'package:flutter/material.dart';

class AboutEpisodeWidget extends StatelessWidget {
  const AboutEpisodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('S6:E1 “Solaricks”', style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 10),
        Text(
          'They’re back... and right where we left ‘em. Without a portal gun, Rick and Morty are stranded as they float through space in the ruins of the Citadel.',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
                height: 1.2,
                fontSize: 11,
              ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Text(
                'Starring:',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                  'Justing Roiland, chris Parnell, Spencer Grammer',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: const Color(0xFFB3B3B3),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              'Creators:',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(width: 10),
            Text(
              'Dan Harmon, Justing Roiland',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: const Color(0xFFB3B3B3),
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
