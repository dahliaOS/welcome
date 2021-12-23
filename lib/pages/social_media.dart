/*
Copyright 2021 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';
import 'package:welcome/main.dart';
import 'package:welcome/widgets/social_media_items.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.foregroundText,
        ),
        backgroundColor: Theme.of(context).colorScheme.cardColor,
        shadowColor: const Color(0x00ffffff),
        title: Text(
          "Social Media",
          style: TextStyle(color: Theme.of(context).colorScheme.foregroundText),
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              scrollDirection: Axis.vertical,
              child: Wrap(
                children: [
                  socialItem(
                      "assets/images/logos/dahliaOS/PNG/dahliaOS_logo_drop_shadow.png",
                      "Official Website",
                      "https://dahliaos.io",
                      context),
                  socialItem("assets/images/icons/PNG/discord.png", "Discord",
                      "https://dahliaos.io/discord", context),
                  socialItem("assets/images/icons/PNG/facebook.png", "Facebook",
                      "https://dahliaos.io/facebook", context),
                  socialItem("assets/images/icons/PNG/github.png", "GitHub",
                      "https://dahliaos.io/github", context),
                  socialItem("assets/images/icons/PNG/instagram.png",
                      "Instagram", "https://dahliaos.io/instagram", context),
                  socialItem("assets/images/icons/PNG/reddit.png", "Reddit",
                      "https://dahliaos.io/reddit", context),
                  socialItem("assets/images/icons/PNG/telegram.png", "Telegram",
                      "https://dahliaos.io/telegram", context),
                  socialItem("assets/images/icons/PNG/twitter.png", "Twitter",
                      "https://dahliaos.io/twitter", context),
                  const Text(
                    "    ",
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sulphur Point"),
                  ),
                ],
              ))),
    );
  }
}
