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

SizedBox boxes(
  String name,
  IconData icon,
  context,
) {
  return SizedBox(
    width: 100,
    height: 100,
    child: Card(
      color: Theme.of(context).cardTheme.color,
      shape: Theme.of(context).cardTheme.shape,
      elevation: Theme.of(context).cardTheme.elevation,
      margin: Theme.of(context).cardTheme.margin,
      child: InkWell(
          onTap: () {},
          splashColor: Theme.of(context).primaryColor,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: Theme.of(context).iconTheme.color,
                ),
                const SizedBox(height: 15),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline2?.fontSize,
                      color: Theme.of(context).textTheme.headline2?.color,
                      fontWeight:
                          Theme.of(context).textTheme.headline2?.fontWeight),
                  overflow: Theme.of(context).textTheme.headline2?.overflow,
                )
              ])),
    ),
  );
}
