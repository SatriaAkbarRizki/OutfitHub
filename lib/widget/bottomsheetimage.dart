import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<dynamic> bottomsheetimage(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Container(
            height: 260,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                spacing: 10,
                children: [
                  Text(
                    "Pick Image",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        spacing: 10,
                        children: [
                          SvgPicture.asset(
                            "assets/Icons/gallery.svg",
                            width: 25,
                            height: 25,
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                          Expanded(
                            child: Text(
                              "Get From Gallery",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        spacing: 10,
                        children: [
                          SvgPicture.asset(
                            "assets/Icons/camera.svg",
                            width: 25,
                            height: 25,
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                          Expanded(
                            child: Text(
                              "Get From Camera",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
}
