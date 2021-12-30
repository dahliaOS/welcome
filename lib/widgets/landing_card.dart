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

SizedBox landingCard(
  String name,
  String description,
  IconData icon,
  String route,
  context,
) {
  return SizedBox(
      width: 600,
      height: 100,
      child: Card(
          color: Colors.grey.shade200,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 0,
          margin: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, route);
            },
            splashColor: Colors.deepOrange,
            child: Row(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: Icon(
                        icon,
                        size: 50,
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
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                )
              ],
            ),
          )));
}
