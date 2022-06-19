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
import 'package:provider/provider.dart';
import 'package:welcome/providers/switch_list_tile_provider.dart';
import 'package:welcome/providers/theme_provider.dart';
import 'package:welcome/theme/theme.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeprovider = Provider.of<ThemeProvider>(context);
    final _switchprovider = Provider.of<SwitchListTileProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Theme mode',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 15,
              ),
              SwitchListTile(
                title: Text(
                  'Dark mode',
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                  'Turn on dark mode',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                shape: Theme.of(context).listTileTheme.shape,
                tileColor: Theme.of(context).listTileTheme.tileColor,
                activeColor: Theme.of(context).listTileTheme.selectedTileColor,
                secondary: Icon(
                  Icons.dark_mode,
                  color: Theme.of(context).listTileTheme.iconColor,
                  size: 30,
                ),
                onChanged: (bool value) {
                  _switchprovider.setSwitched(value);
                  _switchprovider.getSwitched()
                      ? _themeprovider.setTheme(darkTheme)
                      : _themeprovider.setTheme(lightTheme);
                },
                value: _switchprovider.getSwitched(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
