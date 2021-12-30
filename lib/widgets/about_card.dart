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
) {
  return SizedBox(
      width: 500,
      height: 80,
      child: Card(
        color: Colors.grey.shade200,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: Colors.deepOrange, width: 0.5)),
        elevation: 0,
        margin: const EdgeInsets.all(4),
        child: Row(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.deepOrange,
                  ),
                )),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis),
                )
              ],
            ))
          ],
        ),
      ));
}
