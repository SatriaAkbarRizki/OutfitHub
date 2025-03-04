import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:outfithub/datadump/datadump.dart';
import 'package:outfithub/screen/detail.dart';

class MasonryGridWidget extends StatelessWidget {


  MasonryGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: MasonryGridView.count(
        itemCount: 8,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            GestureDetector(
              onTap: () => context.push(DetailScreen.rouieName),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      DataDump
                          .listOutfit[index % DataDump.listOutfit.length].image,
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
            ),
            Text(
              DataDump.listOutfit[index % DataDump.listOutfit.length].name,
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
      ),
    );
  }
}
