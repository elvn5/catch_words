import 'package:catch_words/widgets/headline_large.dart';
import 'package:catch_words/widgets/headline_small.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment(0, -0.15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HeadlineLarge(
            text: title,
          ),
          const Gap(16),
          HeadlineSmall(
            text: subtitle,
          )
        ],
      ),
    );
  }
}
