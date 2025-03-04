import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfithub/riverpod/navbar_state.dart';
import 'package:outfithub/screen/cart.dart';
import 'package:outfithub/screen/home.dart';
import 'package:outfithub/screen/settings/profile.dart';

class Navbar extends ConsumerWidget {
  static String routeName = "/navBar";
  final List listScreen = [HomeScreen(), CartScreen(), ProfileScreen()];

  Navbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valueCurrentIndexNav = ref.watch(navigationState);

    return Scaffold(
      body: listScreen[ref.watch(navigationState)],
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Theme(
              data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent),
              child: BottomNavigationBar(
                  selectedFontSize: 0,
                  currentIndex: ref.watch(navigationState),
                  onTap: (value) =>
                      ref.watch(navigationState.notifier).state = value,
                  backgroundColor:
                      Theme.of(context).navigationBarTheme.backgroundColor,
                  items: [
                    BottomNavigationBarItem(
                      label: "",
                      icon: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(top: 5),
                            decoration: valueCurrentIndexNav == 0
                                ? BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20))
                                : null,
                          ),
                          SvgPicture.asset(
                            "assets/Icons/home.svg",
                            height: 30,
                            width: 30,
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                        ],
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(left: 3, top: 2),
                              decoration: valueCurrentIndexNav == 1
                                  ? BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20))
                                  : null),
                          SvgPicture.asset(
                            "assets/Icons/cart.svg",
                            height: 30,
                            width: 30,
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                        ],
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(top: 5),
                              decoration: valueCurrentIndexNav == 2
                                  ? BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20))
                                  : null),
                          SvgPicture.asset(
                            "assets/Icons/setting.svg",
                            height: 30,
                            width: 30,
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
