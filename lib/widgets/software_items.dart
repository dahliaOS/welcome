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
import 'package:welcome/models/software_item.dart';

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Hive',
      expandedValue: 'Apache 2.0',
    );
  });
}

class SoftwareWidget extends StatefulWidget {
  const SoftwareWidget({Key? key}) : super(key: key);

  @override
  _SoftwareWidgetState createState() => _SoftwareWidgetState();
}

class _SoftwareWidgetState extends State<SoftwareWidget> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue!),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue!),
            subtitle: const Text('To view full license, tap the arrow'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {},
          ),
          isExpanded: item.isExpanded!,
        );
      }).toList(),
    );
  }
}
