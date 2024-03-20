import 'package:flutter/material.dart';

class HeadlineSmall extends StatelessWidget {
  const HeadlineSmall({super.key, required this.text});

  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
