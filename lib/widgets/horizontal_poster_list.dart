import 'package:flutter/material.dart';

import 'app_image.dart';

class HorizontalPosterList extends StatelessWidget {
  const HorizontalPosterList({
    super.key,
    required this.urls,
  });

  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: urls.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: AspectRatio(
              aspectRatio: 140 / 210,
              child: AppImage(
                urls[index],
                redeTamanhoPoster: true,
              ),
            ),
          );
        },
      ),
    );
  }
}
