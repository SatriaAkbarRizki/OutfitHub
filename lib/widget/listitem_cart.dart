import 'package:flutter/material.dart';

class ListitemCart extends StatelessWidget {
  const ListitemCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => SizedBox(
        height: 130,
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              spacing: 10,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/image/Black Slim Fit Dress.jpg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        "Tittleeeeeeeeeeeeeeeeeeeeeeeaaasasa",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(
                        child: Divider(
                          height: 5,
                          thickness: 1.5,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size: XL",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "Rp: 1.6000.000.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
