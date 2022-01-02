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

TextFormField form(String label, String hintText, BuildContext context) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      labelText: label,
      labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
      hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
      enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
      focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
    ),
  );
}
