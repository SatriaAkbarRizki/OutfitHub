import 'package:flutter/material.dart';
import 'package:outfithub/widget/masonry_grid.dart';
import 'package:outfithub/widget/tittle_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TittleHomeWidget(),
              SizedBox(
                height: 10,
              ),
              Expanded(child: MasonryGridWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
