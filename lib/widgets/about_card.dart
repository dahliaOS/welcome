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

SizedBox aboutCard(
  String name,
  String description,
  IconData icon,
  context,
) {
  return SizedBox(
      width: 500,
      height: 80,
      child: Card(
        color: Theme.of(context).cardTheme.color,
        shape: Theme.of(context).cardTheme.shape,
        elevation: Theme.of(context).cardTheme.elevation,
        margin: Theme.of(context).cardTheme.margin,
        child: Row(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Icon(
                    icon,
                    size: 30,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline2?.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.headline2?.fontWeight,
                      color: Theme.of(context).textTheme.headline2?.color,
                      overflow:
                          Theme.of(context).textTheme.headline2?.overflow),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  description,
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.subtitle2?.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.subtitle2?.fontWeight,
                      color: Theme.of(context).textTheme.subtitle2?.color,
                      overflow:
                          Theme.of(context).textTheme.subtitle2?.overflow),
                )
              ],
            ))
          ],
        ),
      ));
}
