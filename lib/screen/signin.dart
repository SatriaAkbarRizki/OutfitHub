
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfithub/widget/button_signin.dart';
import 'package:outfithub/widget/form_sigin.dart';

class SigninScreen extends StatelessWidget {
    static String routeName = "/routeSignIp";
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: SvgPicture.asset(
                            width: 220,
                            "assets/illustrations/security-shield.svg")),
                    Text(
                      "Login",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "Please Sign In to continue",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    FormSigin(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Remember me nexttime",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                width: 25, "assets/Icons/check.svg"))
                      ],
                    ),
                  ],
                ),
                ButtonSignin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
