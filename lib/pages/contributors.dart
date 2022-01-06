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
import 'package:welcome/constants/constants.dart';

class Contributors extends StatelessWidget {
  const Contributors({Key? key}) : super(key: key);

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
          'Contributors',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView.builder(
          itemCount: dummyContributorsList.length,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: 40,
            crossAxisSpacing: 40,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  dummyContributorsList[index],
                  style: TextStyle(
                    color: Theme.of(context).textTheme.subtitle2?.color,
                    fontWeight:
                        Theme.of(context).textTheme.subtitle2?.fontWeight,
                    fontSize: Theme.of(context).textTheme.subtitle2?.fontSize,
                    overflow: Theme.of(context).textTheme.subtitle2?.overflow,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
