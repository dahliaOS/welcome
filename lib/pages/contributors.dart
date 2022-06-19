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
        title: const Text(
          'Contributors',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView.builder(
          itemCount: dummyContributorsList.length,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
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
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Developer',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
