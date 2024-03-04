import 'package:flutter/material.dart';
import 'package:mini_project/models/text.dart';

List<String> categoryName = [
  'Galang Dana',
  'Satu Hutan',
  'Hutan Meradeka',
  'Rawat Bumi',
];

List<Image> categoryImages = [
  Image.asset('assets/categories/love.png'),
  Image.asset('assets/categories/double_tree.png'),
  Image.asset('assets/categories/tree.png'),
  Image.asset('assets/categories/earth.png'),
];

Column categoriesWidget(
  int? index,
  BuildContext context,
) {
  double h1 = MediaQuery.of(context).size.height;
  double w1 = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Container(
        height: h1 / 11,
        width: w1 / 5,
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SizedBox(
            height: h1 / 20,
            width: w1 / 9,
            child: categoryImages[index ?? 0],
          ),
        ),
      ),
      SizedBox(
        height: h1 / 70,
      ),
      SizedBox(
        height: h1 / 22,
        width: w1 / 5.5,
        child: Center(
          child: text(
            categoryName[index ?? 0],
            maxLine: 2,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
