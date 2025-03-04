import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:outfithub/navigation/navbar.dart';
import 'package:outfithub/riverpod/navbar_state.dart';
import 'package:outfithub/screen/settings/myprofile.dart';
import 'package:outfithub/screen/settings/walletsetting.dart';
import 'package:outfithub/widget/bottomsheetlogout.dart';

class ListSettingprofile extends StatelessWidget {
  const ListSettingprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                "Settings",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                spacing: 10,
                children: [
                  SvgPicture.asset(
                    "assets/Icons/profile.svg",
                    width: 25,
                    height: 25,
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  Expanded(
                    child: Text(
                      "My Profile",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => context.push(MyprofileSettings.routeName),
                    style: Theme.of(context).iconButtonTheme.style?.copyWith(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.transparent),
                        shape: WidgetStatePropertyAll(CircleBorder())),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Consumer(builder: (context, ref, child) {
                return Row(
                  spacing: 10,
                  children: [
                    SvgPicture.asset(
                      "assets/Icons/cart.svg",
                      width: 25,
                      height: 25,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                    Expanded(
                      child: Text(
                        "My Order",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(navigationState.notifier).state = 1;
                        context.pushReplacement(Navbar.routeName);
                      },
                      style: Theme.of(context).iconButtonTheme.style?.copyWith(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.transparent),
                          shape: WidgetStatePropertyAll(CircleBorder())),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    )
                  ],
                );
              }),
              Row(
                spacing: 10,
                children: [
                  SvgPicture.asset(
                    "assets/Icons/wallet.svg",
                    width: 25,
                    height: 25,
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  Expanded(
                    child: Text(
                      "Wallet",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => context.push(MyWalletSetting.routeName),
                    style: Theme.of(context).iconButtonTheme.style?.copyWith(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.transparent),
                        shape: WidgetStatePropertyAll(CircleBorder())),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              
              GestureDetector(
                onTap: () => bottomsheetLogout(context),
                child: Text(
                  "Logout",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
