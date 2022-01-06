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
import 'package:welcome/widgets/support_box.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

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
        title: const Text(
          'Support',
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
            socialBox(
              'Website',
              'assets/logos/dahliaOS/dahliaOS.png',
              'https://dahliaos.io/',
              context,
            ),
            socialBox(
              'GitHub',
              'assets/logos/socialmedia/github.png',
              'https://dahliaos.io/github',
              context,
            ),
            socialBox(
              'Discord',
              'assets/logos/socialmedia/discord.png',
              'https://dahliaos.io/discord',
              context,
            ),
            socialBox(
              'Telegram',
              'assets/logos/socialmedia/telegram.png',
              'https://dahliaos.io/telegram',
              context,
            ),
            socialBox(
              'Twitter',
              'assets/logos/socialmedia/twitter.png',
              'https://dahliaos.io/twitter',
              context,
            ),
            socialBox(
              'Instagram',
              'assets/logos/socialmedia/instagram.png',
              'https://dahliaos.io/instagram',
              context,
            ),
            socialBox(
              'Reddit',
              'assets/logos/socialmedia/reddit.png',
              'https://dahliaos.io/reddit',
              context,
            ),
            socialBox(
              'Facebook',
              'assets/logos/socialmedia/facebook.png',
              'https://dahliaos.io/facebook',
              context,
            ),
          ],
        ),
      ),
    );
  }
}
