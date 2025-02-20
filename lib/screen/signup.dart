import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfithub/widget/button_signup.dart';
import 'package:outfithub/widget/form_signup.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = "/routeSignUp";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                          width: 220, "assets/illustrations/register.svg")),
                  Text(
                    "Register",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Please Register to login",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  FormSignup(),
                ],
              ),
              ButtonSignup()
            ],
          ),
        ),
      ),
    );
  }
}
