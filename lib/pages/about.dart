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
import 'package:welcome/widgets/about_card.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
            'About',
            style: TextStyle(
                color: Theme.of(context).appBarTheme.titleTextStyle?.color,
                fontWeight:
                    Theme.of(context).appBarTheme.titleTextStyle?.fontWeight,
                fontSize:
                    Theme.of(context).appBarTheme.titleTextStyle?.fontSize,
                overflow:
                    Theme.of(context).appBarTheme.titleTextStyle?.overflow),
          ),
        ),
        body: Center(
            child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'System information',
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.headline1?.color,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.fontWeight,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.fontSize,
                              overflow: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.overflow),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            aboutCard('Operating system', 'dahliaOS',
                                Icons.computer, context),
                            aboutCard('Architecture', 'ARMv8.4-A',
                                Icons.architecture, context),
                            aboutCard(
                                'Build info', '21XXXX', Icons.build, context),
                            aboutCard('Kernel version', '5.11.1', Icons.update,
                                context),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Hardware information',
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.headline1?.color,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.fontWeight,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.fontSize,
                              overflow: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.overflow),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            aboutCard('CPU', 'Apple M1',
                                Icons.settings_input_component, context),
                            aboutCard('GPU', 'Apple M1',
                                Icons.settings_input_hdmi, context),
                            aboutCard('RAM', '8GB', Icons.memory, context),
                            aboutCard(
                                'Storage', '512GB', Icons.storage, context),
                          ],
                        ),
                      ]),
                ))));
  }
}
