import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadlineLarge extends StatelessWidget {
  const HeadlineLarge({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
