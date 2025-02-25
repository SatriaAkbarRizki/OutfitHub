import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonDetail extends StatelessWidget {
  const ButtonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: Theme.of(context)
              .iconButtonTheme
              .style
              ?.copyWith(fixedSize: WidgetStatePropertyAll(Size(100, 30))),
          child: SvgPicture.asset(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              width: 25,
              height: 25,
              "assets/Icons/wishlist.svg"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: Theme.of(context).iconButtonTheme.style?.copyWith(
              backgroundColor: WidgetStatePropertyAll(Colors.orange),
              fixedSize: WidgetStatePropertyAll(Size(220, 30))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              SvgPicture.asset(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  width: 25,
                  height: 25,
                  "assets/Icons/checkout.svg"),
              Text("Checkout")
            ],
          ),
        )
      ],
    );
  }
}
