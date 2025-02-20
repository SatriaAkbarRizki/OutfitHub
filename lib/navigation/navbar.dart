import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfithub/screen/home.dart';
import 'package:outfithub/widget/masonry_grid.dart';

class Navbar extends StatelessWidget {
  static String routeName = "/navBar";
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: BottomNavigationBar(
                selectedFontSize: 0,
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
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
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
                          margin: EdgeInsets.only(top: 5),
                          // INTEGRATE LOGIC WHEN CLICK ICON
                          // decoration: BoxDecoration(
                          //     color: Colors.orange,
                          //     borderRadius: BorderRadius.circular(20)),
                        ),
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
                          // decoration: BoxDecoration(
                          //     color: Colors.orange,
                          //     borderRadius: BorderRadius.circular(20)),
                        ),
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
    );
  }
}
