import 'package:flutter/material.dart';
import 'package:outfithub/widget/listitem_cart.dart';
import 'package:outfithub/widget/tittle_cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cartScreen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleCartWidget(),
              Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: ListitemCart()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
