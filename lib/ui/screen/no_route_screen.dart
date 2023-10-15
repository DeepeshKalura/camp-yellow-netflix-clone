import 'package:flutter/material.dart';

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Route Found'),
      ),
      body: const Center(
        child: Text(
          '404 - No Route Found',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
