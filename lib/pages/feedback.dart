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
import 'package:url_launcher/url_launcher.dart';

class Feedback extends StatefulWidget {
  const Feedback({Key? key}) : super(key: key);

  @override
  State<Feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  Uri _linkBugReport = Uri.https('', '');
  bool _enabledBugReport = false;
  Uri _linkFeatureRequest = Uri.https('', '');
  bool _enabledFeatureRequest = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Feedback',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Bug report',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'If you have found a bug, we kindly ask you to report it by clicking the dropdown menu below, choosing the component where the bug occured and clicking the Report the bug button that will take you to the GitHub repository of that component where you need to click the bug report button and fill in the template.',
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      DropdownButton<String>(
                        hint: Text(
                          'Select',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        items: <String>[
                          'OS',
                          'Pangolin',
                          'Welcome',
                          'Settings',
                          'App store',
                          'Calculator',
                          'Media',
                          'Clock',
                          'Text editor',
                          'Files',
                          'Graft',
                          'System logs',
                          'Task manager',
                          'Terminal'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                        onChanged: (String? selectedName) {
                          setState(() {
                            _enabledBugReport = true;
                            if (selectedName == 'OS') {
                              selectedName = 'buildroot';
                            } else if (selectedName == 'Settings') {
                              selectedName = 'pangolin_desktop';
                            } else if (selectedName == 'Pangolin') {
                              selectedName = 'pangolin_desktop';
                            }
                            String name;
                            name = selectedName!
                                .replaceAll(' ', '_')
                                .toLowerCase();
                            _linkBugReport = Uri.https(
                              'github.com',
                              '/dahliaos/$name/issues/new/choose',
                            );
                          });
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      if (_enabledBugReport)
                        ElevatedButton.icon(
                          onPressed: () {
                            launchUrl(_linkBugReport);
                          },
                          style: Theme.of(context).elevatedButtonTheme.style,
                          icon: const Icon(Icons.bug_report),
                          label: const Text('Report the bug'),
                        )
                      else
                        ElevatedButton.icon(
                          onPressed: null,
                          style: Theme.of(context).elevatedButtonTheme.style,
                          icon: const Icon(Icons.bug_report),
                          label: const Text('Report the bug'),
                        )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Feature request',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'If you would like to see something added to any of the applications or the system itself, you can file in a feature request by clicking the dropdown menu below, choosing the component that you would like to see something added to and click the Request a feature button that will take you to the GitHub repository of that component where you need to click the feature request button and fill in the template.',
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      DropdownButton<String>(
                        hint: Text(
                          'Select',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        items: <String>[
                          'OS',
                          'Pangolin',
                          'Welcome',
                          'Settings',
                          'App store',
                          'Calculator',
                          'Media',
                          'Clock',
                          'Text editor',
                          'Files',
                          'Graft',
                          'System logs',
                          'Task manager',
                          'Terminal'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? selectedName) {
                          setState(() {
                            _enabledFeatureRequest = true;
                            if (selectedName == 'OS') {
                              selectedName = 'buildroot';
                            } else if (selectedName == 'Settings') {
                              selectedName = 'pangolin_desktop';
                            } else if (selectedName == 'Pangolin') {
                              selectedName = 'pangolin_desktop';
                            }
                            String name;
                            name = selectedName!
                                .replaceAll(' ', '_')
                                .toLowerCase();
                            _linkFeatureRequest = Uri.https(
                              'github.com',
                              '/dahliaos/$name/issues/new/choose',
                            );
                          });
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      if (_enabledFeatureRequest)
                        ElevatedButton.icon(
                          onPressed: () {
                            launchUrl(_linkFeatureRequest);
                          },
                          style: Theme.of(context).elevatedButtonTheme.style,
                          icon: const Icon(Icons.auto_awesome),
                          label: const Text('Request a feature'),
                        )
                      else
                        ElevatedButton.icon(
                          onPressed: null,
                          style: Theme.of(context).elevatedButtonTheme.style,
                          icon: const Icon(Icons.auto_awesome),
                          label: const Text('Request a feature'),
                        )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
