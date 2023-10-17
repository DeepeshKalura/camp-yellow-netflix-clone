import 'package:flutter/material.dart';

import '../../utils/image.dart';

class MoreLikeThisWidget extends StatelessWidget {
  const MoreLikeThisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          GridTile(
            child: Image.asset(
              ImageUtil.americantail,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.batman,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.ben10,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.milkcow,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.spiderman,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.superman,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.americantail,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.batman,
            ),
          ),
          GridTile(
            child: Image.asset(
              ImageUtil.ben10,
            ),
          ),
        ],
      ),
    );
  }
}
