import 'package:flutter/material.dart';

Text text(String txt,
    {Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    int? maxLine,
    TextOverflow? overFlow,
    TextAlign? textAlign,
    TextDecoration? decoration}) {
  return Text(
    txt,
    textAlign: textAlign ?? TextAlign.start,
    maxLines: maxLine ?? 1,
    overflow: overFlow ?? TextOverflow.ellipsis,
    style: TextStyle(
      color: color,
      fontSize: fontSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      decoration: decoration ?? TextDecoration.none,
    ),
  );
}
