import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String routeName;
  final IconData iconData;
  const HomeItem(
      {Key? key,
      required this.title,
      required this.routeName,
      required this.iconData,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).pushNamed(routeName);
      },
      child: ListTile(
        leading: Icon(iconData),
        title: Text(title),
        subtitle: Text(subtitle),
        isThreeLine: true,
      ),
    );
  }
}
