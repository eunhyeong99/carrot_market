import 'package:carrot_market/model/recommend_store.dart';
import 'package:carrot_market/screen/components/appbar_preferred_size.dart';
import 'package:carrot_market/screen/near_me/components/bottom_title_icon.dart';
import 'package:carrot_market/screen/near_me/components/round_border_text.dart';
import 'package:carrot_market/screen/near_me/components/search_text_field.dart';
import 'package:carrot_market/screen/near_me/components/store_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text('내 근처'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.pencil)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 30.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30.0,
              children: [
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.user, title: '구인구직'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.edit, title: '과외/클래스'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.appleAlt, title: '농수산물'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.hotel, title: '부동산'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.car, title: '중고차'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.chessBishop, title: '전시/행사'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              '이웃들의 추천 가게',
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
