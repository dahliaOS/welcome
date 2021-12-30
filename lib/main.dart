/*
Copyright 2022 The dahliaOS Authors

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
import 'package:welcome/pages/feedback.dart' as feedback;
import 'package:welcome/pages/contributors.dart';
import 'package:welcome/pages/getting_started.dart';
import 'package:welcome/pages/software.dart';
import 'package:welcome/pages/about.dart';
import 'package:welcome/pages/landing.dart';
import 'package:welcome/pages/support.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome',
        theme: ThemeData(canvasColor: Colors.white),
        initialRoute: '/',
        routes: {
          '/': (context) => const Landing(),
          '/getting_started': (context) => const GettingStarted(),
          '/feedback': (context) => const feedback.Feedback(),
          '/support': (context) => const Support(),
          '/contributors': (context) => const Contributors(),
          '/software': (context) => const Software(),
          '/about': (context) => const About(),
        });
  }
}
