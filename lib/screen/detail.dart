import 'package:flutter/material.dart';
import 'package:outfithub/widget/button_detail.dart';
import 'package:outfithub/widget/detail_product.dart';

class DetailScreen extends StatelessWidget {
  static String rouieName = '/detailScreen';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailProduct(),
              ButtonDetail()
            ],
          ),
        ),
      ),
    );
  }
}
