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
import 'package:welcome/widgets/getting_started_box.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              color: Theme.of(context).iconTheme.color,
              icon: const Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            );
          },
        ),
        backgroundColor: Theme.of(context).canvasColor,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        elevation: Theme.of(context).appBarTheme.elevation,
        title: Text(
          'Getting started',
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
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(60),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          shrinkWrap: true,
          children: <Widget>[
            boxes(
              'Customization',
              Icons.dashboard_customize,
              context,
            ),
            boxes(
              'Personalization',
              Icons.palette,
              context,
            ),
            boxes(
              'Something',
              Icons.info,
              context,
            ),
            boxes(
              'Something',
              Icons.info,
              context,
            ),
            boxes(
              'Something',
              Icons.info,
              context,
            ),
            boxes(
              'Something',
              Icons.info,
              context,
            ),
            boxes(
              'Something',
              Icons.info,
              context,
            ),
            boxes(
              'Something',
              Icons.info,
              context,
            ),
          ],
        ),
      ),
    );
  }
}
