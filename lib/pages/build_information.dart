/*
Copyright 2021 The dahliaOS Authors

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
import 'package:welcome/main.dart';
import 'package:welcome/constants/constants.dart';

class BuildInfo extends StatelessWidget {
  const BuildInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.foregroundText,
          ),
          backgroundColor: Theme.of(context).colorScheme.cardColor,
          shadowColor: const Color(0x00ffffff),
          title: Text(
            "Build Information",
            style:
                TextStyle(color: Theme.of(context).colorScheme.foregroundText),
          ),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            Theme.of(context).colorScheme.logoMode,
            fit: BoxFit.fitHeight,
            filterQuality: FilterQuality.medium,
            width: 300,
            height: 52,
            package: null,
          ),
          Text(longName,
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.foregroundText)),
          Text(kernel,
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.foregroundText)),
          Text(pangolinCommit,
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.foregroundText)),
          ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: const Text('See dahliaos.io for updates'),
                  action: SnackBarAction(
                    label: 'OK',
                    onPressed: () {},
                  ),
                  width: 300,
                  padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[600],
                elevation: 1,
              ),
              child: const Text('RELEASE NOTES',
                  style: TextStyle(fontSize: 14, color: Color(0xffffffff)))),
        ])));
  }
}
