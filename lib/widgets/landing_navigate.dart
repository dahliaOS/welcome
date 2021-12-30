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
import 'package:welcome/constants/constants.dart';
import 'package:welcome/main.dart';

SizedBox feature(
    String icon, String header, String main, String target, context) {
  return SizedBox(
      width: 512,
      child: Card(
        color: Theme.of(context).colorScheme.cardColor,
        elevation: 0,
        margin: const EdgeInsets.all(25),
        child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, target);
            },
            splashColor: Colors.deepOrange.withAlpha(50),
            child: Row(children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    icon,
                    fit: BoxFit.cover,
                    width: 64,
                    height: 64,
                    package: package,
                  ),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(header,
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.foregroundText,
                        fontWeight: FontWeight.w600)),
                Text(main,
                    style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.lowerText))
              ]),
              Expanded(
                child: Container(),
              ),
              Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).colorScheme.foregroundText,
                  size: 32,
                ),
              )
            ])),
      ));
}
