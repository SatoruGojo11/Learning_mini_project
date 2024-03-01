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

Column categoriesWidget({
  int? index,
  double? heightOfSZ,
  double? widthOfSZ,
  double? heightOfCTR,
  double? widthOfCTR,
  double? heightOfTXT,
  double? widthOfTXT,
}) {
  return Column(
    children: [
      Container(
        height: heightOfCTR,
        width: widthOfCTR,
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SizedBox(
            height: heightOfSZ,
            width: widthOfSZ,
            child: categoryImages[index ?? 0],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        height: heightOfTXT,
        width: widthOfTXT,
        child: Center(
          child: text(
            categoryName[index ?? 0],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
