import 'package:flutter/material.dart';

class ButtonDropdown extends StatelessWidget {
  final String title;
  final Widget child;
  const ButtonDropdown({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: const TextStyle(color: Colors.black),
          )),
          child
        ],
      ),
    );
  }
}
