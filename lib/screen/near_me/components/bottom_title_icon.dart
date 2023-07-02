import 'package:flutter/material.dart';

class BottomTitleIcon extends StatelessWidget {
  final String title;
  final IconData iconData;

  const BottomTitleIcon({
    required this.iconData,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      child: Column(
        children: [
          Icon(iconData, size: 30),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
