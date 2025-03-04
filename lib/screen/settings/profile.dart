import 'package:flutter/material.dart';
import 'package:outfithub/widget/list_settingprofile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/image/Black Slim Fit Dress.jpg"),
                ),
              ),
              Text(
                "Joh Bodsaa",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "Enjoy desasdasdasda",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              ListSettingprofile()
            ],
          ),
        ),
      ),
    );
  }
}
