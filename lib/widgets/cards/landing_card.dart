import 'package:flutter/material.dart';

class LandingCard extends StatelessWidget {
  final String name;
  final String description;
  final IconData icon;
  final String route;

  const LandingCard(
    this.name,
    this.description,
    this.icon,
    this.route, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 100,
      child: Card(
        color: Theme.of(context).cardTheme.color,
        shape: Theme.of(context).cardTheme.shape,
        elevation: Theme.of(context).cardTheme.elevation,
        margin: Theme.of(context).cardTheme.margin,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          splashColor: Theme.of(context).primaryColor,
          child: Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Icon(
                    icon,
                    size: 50,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline1?.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.headline1?.fontWeight,
                        color: Theme.of(context).textTheme.headline1?.color,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1?.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.subtitle1?.fontWeight,
                        color: Theme.of(context).textTheme.subtitle1?.color,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}