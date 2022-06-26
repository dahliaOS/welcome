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
import 'package:welcome/models/contributor_icon_model.dart';
import 'package:welcome/widgets/icon_list/contributor_icon.dart';

final _contributorsList = <ContributorIconModel>[
  ContributorIconModel(name: 'Davide', description: 'Developer'),
  ContributorIconModel(name: 'Noah', description: 'Developer'),
  ContributorIconModel(name: 'Lars', description: 'Developer'),
  ContributorIconModel(name: 'Quiten', description: 'Developer'),
  ContributorIconModel(name: 'Marin', description: 'Developer'),
  ContributorIconModel(name: 'Liam', description: 'Developer'),
  ContributorIconModel(name: 'Blake', description: 'Developer'),
  ContributorIconModel(name: 'Cody', description: 'Developer'),
  ContributorIconModel(name: 'Allan', description: 'Developer'),
  ContributorIconModel(name: 'Camden', description: 'Developer'),
];

class Contributors extends StatelessWidget {
  const Contributors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contributors',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 60,
          horizontal: MediaQuery.of(context).size.width / 40,
        ),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SizedBox(
            width: width,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                for (final item in _contributorsList)
                  ContributorIcon(
                    name: item.name,
                    description: item.description,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
