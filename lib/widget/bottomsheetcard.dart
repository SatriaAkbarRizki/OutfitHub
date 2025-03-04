import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfithub/model/card.dart';

Future<dynamic> bottomsheetCard(BuildContext context, CardModel cardInfo) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Center(
                    child: Text(
                      "Wallet Info",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    "Name Card: ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    cardInfo.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Type Card: ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    cardInfo.type,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Number Card: ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    cardInfo.number,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ));
}
