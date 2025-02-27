import 'package:flutter/material.dart';

class TitleCartWidget extends StatelessWidget {
  const TitleCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cart",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "Clothing On Delivery, Enjoy Shopping",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
