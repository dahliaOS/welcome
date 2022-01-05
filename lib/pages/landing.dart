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
import 'package:welcome/widgets/buttons/icon_button.dart';
import 'package:welcome/widgets/cards/landing_card.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  static const _optionsList = <LandingMenuOption>[
    LandingMenuOption(
      'Getting started',
      'Get started with dahliaOS.',
      Icons.arrow_forward,
      '/getting_started',
    ),
    LandingMenuOption(
      'Feedback',
      'Have a suggestion, review or criticism?',
      Icons.feedback,
      '/feedback',
    ),
    LandingMenuOption(
      'Support',
      'Where you can find us if you have any enquiries.',
      Icons.question_answer,
      '/support',
    ),
    LandingMenuOption(
      'Contributors',
      'Thank you for making dahliaOS a reality.',
      Icons.people,
      '/contributors',
    ),
    LandingMenuOption(
      'Software',
      'Information about 3rd party software.',
      Icons.apps,
      '/software',
    ),
    LandingMenuOption(
      'About',
      'About dahliaOS.',
      Icons.info,
      '/about',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        elevation: Theme.of(context).appBarTheme.elevation,
        title: Text(
          'Welcome to dahliaOS',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.titleTextStyle?.color,
            fontWeight:
                Theme.of(context).appBarTheme.titleTextStyle?.fontWeight,
            fontSize: Theme.of(context).appBarTheme.titleTextStyle?.fontSize,
            overflow: Theme.of(context).appBarTheme.titleTextStyle?.overflow,
          ),
        ),
      ),
      body: Center(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (final item in _optionsList)
                  LandingCard(
                    item.name,
                    item.description,
                    item.icon,
                    item.route,
                  ),
                const SizedBox(
                  height: 20,
                ),
                const MyIconButton(
                  Icons.settings,
                  '/settings',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LandingMenuOption {
  final String name;
  final String description;
  final IconData icon;
  final String route;

  const LandingMenuOption(
    this.name,
    this.description,
    this.icon,
    this.route,
  );
}
