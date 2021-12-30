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
import 'package:welcome/constants/constants.dart';
import 'package:welcome/main.dart';
import 'package:welcome/widgets/landing_navigate.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Theme.of(context)
              .colorScheme
              .foregroundText, //change your color here
        ),
        backgroundColor: Theme.of(context).colorScheme.cardColor,
        shadowColor: const Color(0x00ffffff),
        title: Image.asset(
          Theme.of(context).colorScheme.logoMode,
          fit: BoxFit.fitHeight,
          filterQuality: FilterQuality.medium,
          width: 300,
          height: 25,
          package: package,
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to dahliaOS!",
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Theme.of(context).colorScheme.titleText,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sulphur Point"),
                  ),
                  feature(
                      "assets/images/icons/PNG/welcome-info.png",
                      "Build Information",
                      headingFeatureString,
                      "/info",
                      context),
                  feature("assets/images/icons/PNG/messages.png", "Feedback",
                      "Have an issue or a suggestion?", "/feedback", context),
                  feature(
                      "assets/images/icons/PNG/social.png",
                      "Social media",
                      "Check us out on nearly every platform!",
                      "/social",
                      context),
                  feature(
                      "assets/images/icons/PNG/credits.png",
                      "Credits",
                      "Here's everyone who helped make this happen!",
                      "/credits",
                      context),
                  feature(
                      "assets/images/icons/PNG/software-shared.png",
                      "Software",
                      "View information about third-party software...",
                      "/software",
                      context),
                  feature(
                      "assets/images/icons/PNG/software-shared.png",
                      "Getting started",
                      "Get started with dahliaOS",
                      "/getting_started",
                      context)
                ],
              ))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: const Text('Welcome to dahliaOS!'),
              decoration: BoxDecoration(
                color: Colors.deepOrange[500],
              ),
            ),
            ListTile(
              title: const Text('Build Information'),
              leading: const Icon(Icons.info_outline),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/info");
              },
            ),
            ListTile(
              title: const Text('Feedback'),
              leading: const Icon(Icons.comment),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/feedback");
              },
            ),
            ListTile(
              title: const Text('Social Media'),
              leading: const Icon(Icons.share),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/social");
              },
            ),
            ListTile(
              title: const Text('Credits'),
              leading: const Icon(Icons.people),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/credits");
              },
            ),
            ListTile(
              title: const Text('Software'),
              leading: const Icon(Icons.developer_board),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/software");
              },
            ),
            ListTile(
              title: const Text('Getting started'),
              leading: const Icon(Icons.developer_board),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/getting_started");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          color: const Color(0x00ffffff),
          child: SizedBox(
              height: 50,
              width: 15,
              child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Card(
                    elevation: 0,
                    color: Colors.amber[500],
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.warning,
                                    size: 25,
                                    color: Colors.grey[900],
                                  ))),
                          Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    "WARNING: You are on a pre-release build of dahliaOS. Some features may not work as intended.",
                                    style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 14,
                                      fontFamily: "Roboto",
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  )))),
    );
  }
}
