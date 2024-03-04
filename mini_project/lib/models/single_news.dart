import 'package:flutter/material.dart';
import 'package:mini_project/models/text.dart';

List<Image> categoryImages = [
  Image.asset('assets/categories/love.png'),
  Image.asset('assets/categories/double_tree.png'),
  Image.asset('assets/categories/tree.png'),
  Image.asset('assets/categories/earth.png'),
];

Stack singleNews(BuildContext context, int index) {
  double h1 = MediaQuery.of(context).size.height;
  double w1 = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Container(
        height: h1 / 4,
        width: w1 / 1.1,
        decoration: BoxDecoration(
          image: const DecorationImage(
            // filterQuality: FilterQuality.high,
            image: AssetImage(
              'assets/images/forest.png',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
      Positioned(
        top: h1 / 50,
        right: w1 / 30,
        child: text(
          '#LindungiHutan',
          textAlign: TextAlign.right,
          color: Colors.white,
        ),
      ),
      Positioned(
        bottom: h1 / 40,
        left: w1 / 14,
        width: h1 / 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              '100 Trees from LUCY to Indonesia',
              maxLine: 2,
              textAlign: TextAlign.start,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: w1 / 20,
            ),
            SizedBox(
              height: h1 / 90,
            ),
            text(
              '220 Pohon Terkumpul',
              textAlign: TextAlign.start,
              color: Colors.white,
              fontSize: w1 / 30,
            ),
          ],
        ),
      ),
      Positioned(
        bottom: h1 / 40,
        right: w1 / 20,
        child: Container(
          height: h1 / 18,
          width: w1 / 9,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink[50],
          ),
          padding: EdgeInsets.all(w1 / 50),
          child: categoryImages[index],
        ),
      ),
    ],
  );
}
