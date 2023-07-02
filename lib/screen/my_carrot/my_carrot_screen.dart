import 'package:carrot_market/screen/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/material.dart';

import '../../model/icon_menu.dart';
import 'components/card_icon_menu.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('나의 당근'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
        bottom: const PreferredSize(
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
