import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormSignup extends StatelessWidget {
  final emailController = TextEditingController();
  final numberPhoneController = TextEditingController();
  final passController = TextEditingController();
  FormSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(
              filled: true,
              hintText: "Email",
              fillColor: Colors.grey[200],
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/Icons/person.svg",
                  width: 10,
                  colorFilter:
                      ColorFilter.mode(Colors.grey.shade600, BlendMode.srcIn),
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        TextFormField(
          controller: numberPhoneController,
          decoration: InputDecoration(
              filled: true,
              hintText: "Mobile Number",
              fillColor: Colors.grey[200],
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/Icons/phone.svg",
                  width: 10,
                  colorFilter:
                      ColorFilter.mode(Colors.grey.shade600, BlendMode.srcIn),
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
        TextFormField(
          controller: passController,
          decoration: InputDecoration(
              filled: true,
              hintText: "Password",
              fillColor: Colors.grey[200],
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/Icons/lock.svg",
                  width: 10,
                  colorFilter:
                      ColorFilter.mode(Colors.grey.shade600, BlendMode.srcIn),
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        )
      ],
    );
  }
}
