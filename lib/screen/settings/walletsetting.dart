import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:outfithub/model/card.dart';
import 'package:outfithub/widget/bottomsheetcard.dart';

class MyWalletSetting extends StatelessWidget {
  static String routeName = '/myWalletSetting';
  final listCard = [
    "assets/image/cardwallet1.png",
    "assets/image/cardwallet2.png",
    "assets/image/cardwallet3.png",
    "assets/image/cardwallet4.png",
    "assets/image/cardwallet5.png"
  ];

  List<CardModel> listCards = [
    CardModel("Peter Crouch", "MasterCard", "2131 3242 5335 9999",
        "assets/image/cardwallet1.png"),
    CardModel("John Crouch", "Visa", "2131 3242 5335 3090",
        "assets/image/cardwallet2.png"),
    CardModel("John Crouch", "MasterCard", "2131 3242 5335 3090",
        "assets/image/cardwallet3.png"),
    CardModel("Alex Thomaas", "MasterCard", "3482 8384 8282 5231",
        "assets/image/cardwallet4.png"),
    CardModel("Donald Iskander", "Visa", "3425 2784 5732 7422",
        "assets/image/cardwallet5.png")
  ];
  MyWalletSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "My Wallet",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Expanded(
            child: Swiper(
              itemCount: 3,
              itemHeight: 500.0,
              itemWidth: 300.0,
              scrollDirection: Axis.horizontal,
              layout: SwiperLayout.STACK,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => bottomsheetCard(context, listCards[index]  ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: Image.asset(
                        listCards[index].path,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
