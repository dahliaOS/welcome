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
import 'package:welcome/widgets/feedback_fields.dart';

class Feedback extends StatelessWidget {
  const Feedback({Key? key}) : super(key: key);

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
          'Feedback',
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
        child: SizedBox(
          width: 700,
          height: 500,
          child: Card(
            color: Theme.of(context).cardTheme.color,
            elevation: Theme.of(context).cardTheme.elevation,
            shape: Theme.of(context).cardTheme.shape,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Wrap(
                    runSpacing: 25,
                    children: <Widget>[
                      Text(
                        'Report a bug',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.headline1?.color,
                          fontWeight:
                              Theme.of(context).textTheme.headline1?.fontWeight,
                          fontSize:
                              Theme.of(context).textTheme.headline1?.fontSize,
                        ),
                        overflow:
                            Theme.of(context).textTheme.headline1?.overflow,
                      ),
                      form('Name', 'Your name', context),
                      form('Email', 'Your email address', context),
                      form('Bug', 'Describe the bug', context),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.fixedSize,
                          backgroundColor: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.backgroundColor,
                          elevation: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.elevation,
                          shape: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.shape,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.button?.color,
                            fontWeight:
                                Theme.of(context).textTheme.button?.fontWeight,
                            fontSize:
                                Theme.of(context).textTheme.button?.fontSize,
                            overflow:
                                Theme.of(context).textTheme.button?.overflow,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
