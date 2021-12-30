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
import 'package:welcome/widgets/landing_card.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).canvasColor,
          centerTitle: true,
          elevation: 1,
          title: const Text(
            'Welcome to dahliaOS',
            style: TextStyle(color: Colors.black),
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
                  landingCard('Getting started', 'Get started with dahliaOS.',
                      Icons.arrow_forward, '/getting_started', context),
                  landingCard(
                      'Feedback',
                      'Have a suggestion, review or criticism?',
                      Icons.feedback,
                      '/feedback',
                      context),
                  landingCard(
                      'Support',
                      'Where you can find us if you have any enquiries.',
                      Icons.question_answer,
                      '/support',
                      context),
                  landingCard(
                      'Contributors',
                      'Thank you for making dahliaOS a reality.',
                      Icons.people,
                      '/contributors',
                      context),
                  landingCard(
                      'Software',
                      'Information about 3rd party software.',
                      Icons.apps,
                      '/software',
                      context),
                  landingCard('About', 'About dahliaOS.', Icons.info, '/about',
                      context),
                ]),
          ),
        )));
  }
}
