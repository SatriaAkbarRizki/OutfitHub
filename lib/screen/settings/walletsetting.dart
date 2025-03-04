import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:outfithub/datadump/datadump.dart';
import 'package:outfithub/model/card.dart';
import 'package:outfithub/widget/bottomsheetcard.dart';

class MyWalletSetting extends StatelessWidget {
  static String routeName = '/myWalletSetting';

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
                onTap: () =>
                    bottomsheetCard(context, DataDump.listCards[index]),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: Image.asset(
                        DataDump.listCards[index].path,
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
