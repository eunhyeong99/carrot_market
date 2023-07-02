import 'package:carrot_market/model/neighborhood_life.dart';
import 'package:carrot_market/screen/components/image_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({
    required this.neighborhoodLife,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
        ),
      ),
      child: Column(
        children: [
          buildTop(),
          buildWriter(),
          buildWriting(),
          buildImage(),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: Colors.grey[300],
          ),
          buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  Padding buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child: Text(neighborhoodLife.category),
          ),
          Text(neighborhoodLife.date)
        ],
      ),
    );
  }

  Padding buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 15,
            imgUrl: neighborhoodLife.profileImgUri,
            width: 30,
            height: 30,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: '${neighborhoodLife.userName}'),
                TextSpan(text: '${neighborhoodLife.location}'),
                TextSpan(text: '${neighborhoodLife.authCount}회'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Visibility buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.smile,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            '공감하기',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(width: 22),
          Icon(FontAwesomeIcons.commentAlt, color: Colors.grey, size: 22.0),
          const SizedBox(width: 8),
          Text(
            '댓글쓰기 ${commentCount}',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
