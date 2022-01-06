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
import 'package:welcome/constants/constants.dart';

class Software extends StatelessWidget {
  const Software({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        title: const Text(
          'Software',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
          itemCount: dummyNameSource.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.library_add),
              trailing: const Icon(Icons.library_books),
              isThreeLine: true,
              title: Text(
                dummyNameSource[index],
                style: Theme.of(context).textTheme.headline2,
              ),
              subtitle: Text(
                dummyDescriptionSource[index],
                style: Theme.of(context).textTheme.subtitle1,
              ),
              iconColor: Theme.of(context).iconTheme.color,
              textColor: Theme.of(context).textTheme.headline1?.color,
              tileColor: Theme.of(context).backgroundColor,
              hoverColor: Theme.of(context).hoverColor,
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
