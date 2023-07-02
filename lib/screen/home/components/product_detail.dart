import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../model/products.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title),
          const SizedBox(height: 4.0),
          Text('${product.address} * ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text('${product.price}원'),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentsCount > 0,
                child: buildIcons(product.heartCount, CupertinoIcons.heart),
              ),
              const SizedBox(height: 8.0),
              Visibility(
                visible: product.commentsCount > 0,
                child: buildIcons(product.heartCount, CupertinoIcons.heart),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}
