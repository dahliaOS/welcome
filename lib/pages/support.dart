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
        title: const Text(
          'Support',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 40,
            horizontal: MediaQuery.of(context).size.width / 20,
          ),
          child: GridView.count(
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
            shrinkWrap: true,
            children: <Widget>[
              SocialCard(
                'Website',
                'assets/logos/dahliaOS/logomark.png',
                Uri.https('dahliaos.io', ''),
              ),
              SocialCard(
                'GitHub',
                'assets/logos/social_media/github.png',
                Uri.https('dahliaos.io', '/github'),
              ),
              SocialCard(
                'Discord',
                'assets/logos/social_media/discord.png',
                Uri.https('dahliaos.io', '/discord'),
              ),
              SocialCard(
                'Telegram',
                'assets/logos/social_media/telegram.png',
                Uri.https('dahliaos.io', '/telegram'),
              ),
              SocialCard(
                'Twitter',
                'assets/logos/social_media/twitter.png',
                Uri.https('dahliaos.io', '/twitter'),
              ),
              SocialCard(
                'Instagram',
                'assets/logos/social_media/instagram.png',
                Uri.https('dahliaos.io', '/instagram'),
              ),
              SocialCard(
                'Reddit',
                'assets/logos/social_media/reddit.png',
                Uri.https('dahliaos.io', '/reddit'),
              ),
              SocialCard(
                'Facebook',
                'assets/logos/social_media/facebook.png',
                Uri.https('dahliaos.io', '/facebook'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
