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
import 'package:welcome/models/about_card_item_model.dart';
import 'package:welcome/widgets/cards/about_card.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  static const _systemInformationList = <AboutCardItem>[
    AboutCardItem(
      'Operating system',
      'dahliaOS',
      Icons.computer,
    ),
    AboutCardItem(
      'Architecture',
      'ARMv8.4-A',
      Icons.architecture,
    ),
    AboutCardItem(
      'Build info',
      '21XXXX',
      Icons.build,
    ),
    AboutCardItem(
      'Kernel version',
      '5.11.1',
      Icons.update,
    ),
  ];

  static const _hardwareInformationList = <AboutCardItem>[
    AboutCardItem(
      'CPU',
      'Apple M1',
      Icons.settings_input_component,
    ),
    AboutCardItem(
      'GPU',
      'Apple M1',
      Icons.settings_input_hdmi,
    ),
    AboutCardItem(
      'RAM',
      '8GB',
      Icons.memory,
    ),
    AboutCardItem(
      'Storage',
      '512GB',
      Icons.storage,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        title: const Text(
          'About',
        ),
      ),
      body: Center(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'System information',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 10,
                ),
                for (final item in _systemInformationList)
                  AboutCard(
                    item.name,
                    item.description,
                    item.icon,
                  ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Hardware information',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 10,
                ),
                for (final item in _hardwareInformationList)
                  AboutCard(
                    item.name,
                    item.description,
                    item.icon,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
