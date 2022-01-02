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
import 'package:welcome/widgets/credits_person.dart';

class Credits extends StatelessWidget {
  const Credits({Key? key}) : super(key: key);

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
          "Credits",
          style: TextStyle(color: Theme.of(context).colorScheme.foregroundText),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Text(
              "Thank you to everyone who made this dream come true!",
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.foregroundText,
              ),
            ),
            Text(
              "Want to help out? Find us at https://github.com/dahliaOS",
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.foregroundText,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                scrollDirection: Axis.vertical,
                child: Wrap(
                  children: <Widget>[
                    person(
                      "assets/images/credits/profiles/bleonard.png",
                      "Blake Leonard",
                      "bleonard252",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/noah.jpeg",
                      "Noah Cain",
                      "nmcain",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/camden.jpeg",
                      "Camden Bruce",
                      "EnderNightLord-ChromeBook",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/faust.png",
                      "Marin Heđeš",
                      "SincerelyFaust",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/lars.jpeg",
                      "Lars",
                      "larsb24",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/horus.png",
                      "Hackerman",
                      "Horus125",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/haru.jpeg",
                      "Kanou Haru",
                      "kanouharu",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/nobody.png",
                      "Nobody",
                      "nobody5050",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/subspace.png",
                      "Lucas Puntillo",
                      "puntillol59",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/hexa.png",
                      "Quinten",
                      "HexaOneOfficial",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/x7.jpeg",
                      "Syed Mushaheed",
                      "predatorx7",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/vanzh.png",
                      "V.",
                      "xVanzh",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/funeoz.jpeg",
                      "Funeoz",
                      "Funeoz",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/fristover.png",
                      "Fristover",
                      "Fristover",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/allansrc.jpeg",
                      "Allan Ramos",
                      "Allansrc",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/xeu100.png",
                      "xeu100",
                      "xeu100",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/Seplx.png",
                      "Seplx",
                      "Seplx",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/aoaowangxiao.jpeg",
                      "aoaowangxiao",
                      "aoaowangxiao",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/evolutionevotv.png",
                      "evoDesign",
                      "evolutionevotv",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/febryardiansyah.jpeg",
                      "Febry Ardiansyah",
                      "febryardiansyah",
                      context,
                    ),
                    person(
                      "assets/images/credits/profiles/goktugvatandas.jpeg",
                      "Göktuğ Vatandaş",
                      "goktugvatandas",
                      context,
                    ),
                    person(
                      "assets/images/logos/dahliaOS/PNG/dahliaOS_logo_drop_shadow.png",
                      "And... you!",
                      "Thanks for testing out this build!",
                      context,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
