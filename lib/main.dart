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
import 'package:welcome/pages/build_information.dart';
import 'package:welcome/pages/credits.dart';
import 'package:welcome/pages/feedback.dart' as feedback;
import 'package:welcome/pages/getting_started.dart';
import 'package:welcome/pages/landing.dart';
import 'package:welcome/pages/social_media.dart';
import 'package:welcome/pages/software.dart';

void main() {
  runApp(const Welcome());
}

extension CustomColorScheme on ColorScheme {
  Color get titleText => brightness == Brightness.light
      ? const Color(0xFF000000)
      : const Color(0xFFffffff);
  Color get foregroundText => brightness == Brightness.light
      ? const Color(0xFF222222)
      : const Color(0xFFffffff);
  String get logoMode => brightness == Brightness.light
      ? "assets/images/logos/dahliaOS/PNG/dahliaOS_logo_with_text_drop_shadow.png"
      : "assets/images/logos/dahliaOS/PNG/logo-white.png";
  Color get lowerText => brightness == Brightness.light
      ? const Color(0xFF333333)
      : const Color(0xFFffffff);
  Color get cardColor => brightness == Brightness.light
      ? const Color(0xFFffffff)
      : const Color(0xFF303030);
  Color get barIconColor => brightness == Brightness.light
      ? const Color(0xFF454545)
      : const Color(0xFFffffff);
  Color get barColor => brightness == Brightness.light
      ? const Color(0xFFe0e0e0)
      : const Color(0xFF333333);
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      theme: ThemeData(
        brightness: Brightness.light,
        platform: TargetPlatform.fuchsia,
        primarySwatch: Colors.deepOrange,
        canvasColor: const Color(0xFFFFFFFF),
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          platform: TargetPlatform.fuchsia,
          primarySwatch: Colors.deepOrange),
      /*themeMode: Pangolin.settingsBox.get("darkMode")
          ? ThemeMode.dark
          : ThemeMode.light,*/
      initialRoute: '/',
      routes: {
        '/': (context) => const Landing(),
        '/info': (context) => const BuildInfo(),
        '/feedback': (context) => const feedback.Feedback(),
        '/social': (context) => const SocialMedia(),
        '/credits': (context) => const Credits(),
        '/software': (context) => const Software(),
        '/getting_started': (context) => const GettingStarted(),
      },
    );
  }
}
