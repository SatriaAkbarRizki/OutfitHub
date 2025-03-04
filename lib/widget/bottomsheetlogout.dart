import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<dynamic> bottomsheetLogout(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 10,
                    children: [
                      SvgPicture.asset(
                        "assets/illustrations/asking-question.svg",
                        height: 220,
                      ),
                      Text(
                        "Are you sure Logout?",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: Theme.of(context)
                                  .elevatedButtonTheme
                                  .style
                                  ?.copyWith(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.grey.shade200)),
                            )),
                        SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Yes",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: Theme.of(context)
                                  .elevatedButtonTheme
                                  .style
                                  ?.copyWith(
                                      backgroundColor:
                                          WidgetStatePropertyAll(Colors.red)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));
}
