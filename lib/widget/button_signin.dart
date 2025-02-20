import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:outfithub/navigation/navbar.dart';
import 'package:outfithub/screen/signup.dart';

class ButtonSignin extends StatelessWidget {
  const ButtonSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.go(Navbar.routeName);
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Text(
                  "Sign In",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                  text: "Dont Have Account?",
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            log("Click Sign Up");
                            context.go(SignupScreen.routeName);
                          },
                        text: " Sign Up",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.blueGrey.shade700,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ],
        ));
  }
}
