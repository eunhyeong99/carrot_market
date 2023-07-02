import 'package:carrot_market/model/neighborhood_life.dart';
import 'package:carrot_market/screen/components/appbar_preferred_size.dart';
import 'package:carrot_market/screen/neighborhood_life/components/life_body.dart';
import 'package:carrot_market/screen/neighborhood_life/components/life_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: Text('동네생활'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
