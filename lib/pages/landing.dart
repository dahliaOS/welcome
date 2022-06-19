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
import 'package:welcome/pages/about.dart';
import 'package:welcome/pages/contributors.dart';
import 'package:welcome/pages/feedback.dart' as feedback;
import 'package:welcome/pages/home.dart';
import 'package:welcome/pages/settings.dart';
import 'package:welcome/pages/software.dart';
import 'package:welcome/pages/support.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(
                () {
                  _selectedIndex = index;
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                  );
                },
              );
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.feedback),
                label: Text('Feedback'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.question_answer),
                label: Text('Support'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people),
                label: Text('Contributors'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.apps),
                label: Text('Software'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.info),
                label: Text('About'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const <Widget>[
                Home(),
                feedback.Feedback(),
                Support(),
                Contributors(),
                Software(),
                About(),
                Settings(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
