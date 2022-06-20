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

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/logos/dahliaOS/logotype-light.png",
          height: 25,
          package: isDebug ? null : 'welcome',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
          child: Column(
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1?.color,
                        fontSize: 34,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/logos/dahliaOS/logotype-light.png",
                      height: 50,
                      package: isDebug ? null : 'welcome',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'About dahliaOS',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'dahliaOS is a modern, secure, lightweight and responsive operating system, combining the best of GNU/Linux and Fuchsia OS. We are developing a privacy-respecting, fast, secure and lightweight operating system, our goal is to establish a new standard for the desktop platform.',
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      launchUrl(Uri.https('dahliaos.io', ''));
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    icon: const Icon(Icons.my_library_books),
                    label: const Text('Learn more'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Support dahliaOS',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We use donations to keep improving our project and hardware support, and donations will go towards website hosting, development software licenses, general development of the operating system and tools, website domains and devices for testing and expanding hardware support. Donate by clicking the button below, it leads to our Open Collective collective.',
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      launchUrl(Uri.https('dahliaos.io', '/donate'));
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    icon: const Icon(Icons.volunteer_activism),
                    label: const Text('Donate'),
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
