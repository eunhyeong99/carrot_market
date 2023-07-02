import 'package:flutter/material.dart';

import '../../../model/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;

  const CardIconMenu({
    required this.iconMenuList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) => buildRowIconItem(
                iconMenuList[index].title, iconMenuList[index].iconData),
          ),
        ),
      ),
    );
  }

  Widget buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50.0,
      child: Row(
        children: [
          Icon(iconData, size: 15.0),
          const SizedBox(width: 20.0),
          Text(title),
        ],
      ),
    );
  }
}
