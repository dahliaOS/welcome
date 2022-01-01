import 'package:flutter/material.dart';

IconButton iconButton(IconData icon, String route, context) {
  return IconButton(
      hoverColor: Theme.of(context).hoverColor,
      splashColor: Theme.of(context).primaryColor,
      splashRadius: 35,
      padding: const EdgeInsets.all(10),
      iconSize: 30,
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      icon: Icon(icon, color: Theme.of(context).iconTheme.color));
}
