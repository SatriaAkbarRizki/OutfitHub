import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                child: Image.asset(
                  "assets/image/Black Slim Fit Dress.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () => context.pop(),
                style: Theme.of(context).iconButtonTheme.style?.copyWith(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                    shape: WidgetStatePropertyAll(CircleBorder())),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tittle",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "Rp 1500000",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Text(
          "SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSAAAAAAAAAAXXXXXXXaaaaaaaaaaaaaaaawwwwwwwwwwwwwwssssssssssssssssssssssssssaaaaaaaaaqqqqqqqqqqqq",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
