import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class MasonryGridWidget extends StatelessWidget {
  final List<String> images = [
    "assets/image/Black Slim Fit Dress.jpg",
    "assets/image/Black Wash Straight Leg Jeans.jpg"
  ];

  MasonryGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: 8, // Maximum number of items
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  images[index % images.length],
                  filterQuality: FilterQuality.medium,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                          onPressed: () {},
                          style: Theme.of(context).iconButtonTheme.style,
                          icon: SvgPicture.asset(
                              colorFilter: ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn),
                              width: 25,
                              height: 25,
                              "assets/Icons/wishlist.svg")),
                    )),
              ],
            ),
          ),
          Text(
            "Shirt Black Awesome and Minimalist Modern",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
      crossAxisCount: 2,
    );
  }
}
