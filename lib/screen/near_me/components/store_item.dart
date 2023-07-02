import 'package:carrot_market/model/recommend_store.dart';
import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  final RecommendStore recommendStore;

  const StoreItem({
    required this.recommendStore,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.3, color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: 289,
      child: Column(
        children: [
          buildClipRRect(topLeft: 10),
          const SizedBox(width: 2.0),
          buildClipRRect(topRight: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '${recommendStore.storeName}'),
                      TextSpan(text: '${recommendStore.location}'),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${recommendStore.description}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '후기 ${recommendStore.commentCount}',
                          style: TextStyle(fontSize: 15, color: Colors.blue)),
                      TextSpan(
                          text: '후기 ${recommendStore.likeCount}',
                          style: TextStyle(fontSize: 15, color: Colors.blue)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 16.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${recommendStore.commentUser}',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${recommendStore.comment}',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ClipRRect buildClipRRect({double topLeft = 0, double topRight = 0}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
      ),
      child: Image.network(
        recommendStore.storeImages[0],
        width: 143,
        height: 52,
        fit: BoxFit.cover,
      ),
    );
  }
}
