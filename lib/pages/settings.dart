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
import 'package:provider/provider.dart';
import 'package:welcome/theme/theme.dart';
import 'package:welcome/theme/theme_provider.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeprovider = Provider.of<ThemeProvider>(context);
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
          'Settings',
        ),
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 70, right: 70, top: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Theme',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 150,
                      child: Card(
                        color: Theme.of(context).cardTheme.color,
                        shape: Theme.of(context).cardTheme.shape,
                        elevation: Theme.of(context).cardTheme.elevation,
                        margin: Theme.of(context).cardTheme.margin,
                        child: InkWell(
                          splashColor: Theme.of(context).primaryColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.light_mode,
                                size: 35,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Light',
                                style: Theme.of(context).textTheme.subtitle1,
                              )
                            ],
                          ),
                          onTap: () {
                            _themeprovider.setTheme(lightTheme);
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 150,
                      child: Card(
                        color: Theme.of(context).cardTheme.color,
                        shape: Theme.of(context).cardTheme.shape,
                        elevation: Theme.of(context).cardTheme.elevation,
                        margin: Theme.of(context).cardTheme.margin,
                        child: InkWell(
                          splashColor: Theme.of(context).primaryColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.dark_mode,
                                size: 35,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Dark',
                                style: Theme.of(context).textTheme.subtitle1,
                              )
                            ],
                          ),
                          onTap: () {
                            _themeprovider.setTheme(darkTheme);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
