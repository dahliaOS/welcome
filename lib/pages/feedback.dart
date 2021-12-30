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
              color: Colors.black,
              icon: const Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            );
          },
        ),
        backgroundColor: Theme.of(context).canvasColor,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          'Feedback',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 700,
          height: 500,
          child: Card(
            color: Colors.grey.shade200,
            elevation: 0,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Wrap(
                    runSpacing: 25,
                    children: <Widget>[
                      const Text(
                        'Report a bug',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      form('Name', 'Your name'),
                      form('Email', 'Your email address'),
                      form('Bug', 'Describe the bug'),
                      ElevatedButton(
                          style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  const Size(100, 40)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                              elevation: MaterialStateProperty.all(0),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ))),
                          onPressed: () {},
                          child: const Text(
                            'Submit',
                            overflow: TextOverflow.ellipsis,
                          ))
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
