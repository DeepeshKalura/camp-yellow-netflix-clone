import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/icons.dart';

class InfoWidget extends StatelessWidget {
  final String airYear;
  final String categories;
  final String season;
  final String quality;

  const InfoWidget({
    Key? key,
    required this.airYear,
    required this.categories,
    required this.season,
    required this.quality,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          airYear,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          categories,
        ),
        const SizedBox(width: 8),
        Text(
          season,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          quality,
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          IconUtils.comments,
        )
      ],
    );
  }
}
