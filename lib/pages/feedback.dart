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
import 'package:welcome/widgets/text_fields/my_text_form_field.dart';

class Feedback extends StatelessWidget {
  const Feedback({Key? key}) : super(key: key);

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
          'Feedback',
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
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const MyTextFormField('Name', 'Your name'),
                      const MyTextFormField('Email', 'Your email address'),
                      const MyTextFormField('Bug', 'Describe the bug'),
                      ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () {},
                        child: Text(
                          'Submit',
                          style: Theme.of(context).textTheme.button,
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
