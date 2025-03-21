import 'package:flutter/material.dart';

class TitleHomeWidget extends StatelessWidget {
  const TitleHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "OutfitHub",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "Find your? match style!",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
