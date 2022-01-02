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
import 'package:welcome/widgets/software_items.dart';

class Software extends StatelessWidget {
  const Software({Key? key}) : super(key: key);

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
          "Software",
          style: TextStyle(color: Theme.of(context).colorScheme.foregroundText),
        ),
      ),
      body: const Center(
        child: SizedBox(
          width: 800,
          child: SoftwareWidget(),
        ),
      ),
    );
  }
}
