import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:outfithub/screen/signin.dart';

class ButtonSignup extends StatelessWidget {
  const ButtonSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                    text: "Already have account?",
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              log("Click Sign In");
                              context.go(SigninScreen.routeName);
                            },
                          text: " Sign In",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Colors.blueGrey.shade700,
                                  fontWeight: FontWeight.bold))
                    ]),
              ),
            ],
          )),
    );
  }
}
