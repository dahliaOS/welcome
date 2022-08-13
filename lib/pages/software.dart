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
import 'package:welcome/utils/utils.dart';

class Software extends StatelessWidget {
  const Software({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Software',
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 40,
            horizontal: MediaQuery.of(context).size.width / 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Licenses',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline_rounded,
                  color: Theme.of(context).listTileTheme.iconColor,
                  size: 30,
                ),
                title: Text(
                  'Licenses',
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                  'Show third party licenses',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                onTap: () => showLicensePage(
                  context: context,
                  applicationName: 'Welcome',
                  applicationIcon: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 40,
                      horizontal: MediaQuery.of(context).size.width / 20,
                    ),
                    child: Image.asset(
                      'assets/logos/dahliaOS/logomark.png',
                      height: 64,
                      width: 64,
                      package: isDebug ? null : 'welcome',
                    ),
                  ),
                  applicationLegalese: 'Apache-2.0 License',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
