import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          children: [
            buildProfileRow(),
            const SizedBox(height: 30.0),
            buildProfileButton(),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
                buildRoundTextButton('구매내역', FontAwesomeIcons.shoppingBag),
                buildRoundTextButton('관심목록', FontAwesomeIcons.heart),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://placeimg.com/200/100/people',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('developer'),
            const SizedBox(height: 10),
            Text('좌동 #00912'),
          ],
        ),
      ],
    );
  }

  Widget buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFD4D5DD),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 45.0,
        child: Center(
          child: Text('프로필 보기'),
        ),
      ),
    );
  }

  Widget buildRoundTextButton(String title, IconData iconData) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color.fromRGBO(255, 226, 208, 1),
              border: Border.all(
                color: Color(0xFFD4D5DD),
                width: 0.5,
              ),
            ),
            child: Icon(
              iconData,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
}
