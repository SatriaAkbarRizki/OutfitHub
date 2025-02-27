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
              Container(
                margin: EdgeInsets.only(top: 50),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("XL"),
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style
                            ?.copyWith(
                                fixedSize: WidgetStatePropertyAll(Size(80, 30)),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                  // Change your radius here
                                  borderRadius: BorderRadius.circular(12),
                                ))),
                      ),
                    ),
                  ),
                ),
              ),
              ButtonDetail()
            ],
          ),
        ),
      ),
    );
  }
}
