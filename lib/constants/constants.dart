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
import 'package:welcome/models/landing_menu_option_model.dart';

const dummyContributorsList = <String>[
  'Ivan',
  'Makarije',
  'Marko',
  'Dženad',
  'Jasmina',
  'Jovan',
  'Marija',
  'Nevena',
  'Domagoj',
  'Slaven',
  'Ipče',
  'Stojan'
];
const dummyNameSource = <String>['one', 'two', 'three', 'four', 'five'];
const dummyDescriptionSource = <String>[
  'does this',
  'does that',
  "doesn't work",
  'very good',
  'decent'
];

const landingPageMenuOptions = <LandingMenuOption>[
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
