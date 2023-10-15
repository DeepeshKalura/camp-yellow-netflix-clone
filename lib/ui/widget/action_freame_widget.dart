import 'package:flutter/material.dart';

class ActionFrameWidget extends StatelessWidget {
  final IconData icon;
  final String subtitle;

  const ActionFrameWidget({
    super.key,
    required this.icon,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(height: 5),
        Text(subtitle, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}
