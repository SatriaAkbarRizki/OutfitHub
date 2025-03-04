import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfithub/widget/bottomsheetimage.dart';

class MyprofileSettings extends StatelessWidget {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final passwordController = TextEditingController();
  static String routeName = "/myprofileScreen";
  MyprofileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                child: Icon(
              Icons.check,
              color: Colors.green,
            )),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: () {
                      bottomsheetimage(context);
                    },
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/image/Black Slim Fit Dress.jpg"),
                    ),
                  ),
                ),
              ),
              Text(
                "Name",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Name",
                    fillColor: Colors.grey[200],
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/Icons/person.svg",
                        width: 10,
                        colorFilter: ColorFilter.mode(
                            Colors.grey.shade600, BlendMode.srcIn),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(
                "Description",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Description",
                    fillColor: Colors.grey[200],
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/Icons/person.svg",
                        width: 10,
                        colorFilter: ColorFilter.mode(
                            Colors.grey.shade600, BlendMode.srcIn),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(
                "Password",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Password",
                    fillColor: Colors.grey[200],
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/Icons/person.svg",
                        width: 10,
                        colorFilter: ColorFilter.mode(
                            Colors.grey.shade600, BlendMode.srcIn),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
