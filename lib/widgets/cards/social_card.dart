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
import 'package:welcome/utils/utils.dart';

class SocialCard extends StatelessWidget {
  const SocialCard(
    this.name,
    this.imageName,
    this.link, {
    Key? key,
  }) : super(key: key);
  final String name;
  final String imageName;
  final Uri link;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => launchUrl(link),
          splashColor: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                imageName,
                width: MediaQuery.of(context).size.width / 20,
                height: MediaQuery.of(context).size.height / 20,
                package: isDebug ? null : 'welcome',
              ),
              const SizedBox(height: 15),
              Text(
                name,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
