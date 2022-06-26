import 'package:flutter/material.dart';

class ContributorIcon extends StatelessWidget {
  final String name;
  final String description;

  const ContributorIcon({
    required this.name,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
