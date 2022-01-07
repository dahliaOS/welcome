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
import 'package:welcome/widgets/cards/social_card.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

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
          children: const <Widget>[
            SocialCard(
              'Website',
              'assets/logos/dahliaOS/dahliaOS.png',
              'https://dahliaos.io/',
            ),
            SocialCard(
              'GitHub',
              'assets/logos/socialmedia/github.png',
              'https://dahliaos.io/github',
            ),
            SocialCard(
              'Discord',
              'assets/logos/socialmedia/discord.png',
              'https://dahliaos.io/discord',
            ),
            SocialCard(
              'Telegram',
              'assets/logos/socialmedia/telegram.png',
              'https://dahliaos.io/telegram',
            ),
            SocialCard(
              'Twitter',
              'assets/logos/socialmedia/twitter.png',
              'https://dahliaos.io/twitter',
            ),
            SocialCard(
              'Instagram',
              'assets/logos/socialmedia/instagram.png',
              'https://dahliaos.io/instagram',
            ),
            SocialCard(
              'Reddit',
              'assets/logos/socialmedia/reddit.png',
              'https://dahliaos.io/reddit',
            ),
            SocialCard(
              'Facebook',
              'assets/logos/socialmedia/facebook.png',
              'https://dahliaos.io/facebook',
            ),
          ],
        ),
      ),
    );
  }
}
