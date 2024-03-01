import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextFormField textformfield(
  TextEditingController ctrl,
  String hinttxt,
  String labeltxt, {
  List<TextInputFormatter>? inputFormate,
  bool? obscurity,
  prefixicn,
  suffixicn,
  int? maxLength,
  TextInputType? keyboardtype,
  Function(String)? onchanged,
  String? Function(String?)? validator,
  String? errortext,
}) {
  return TextFormField(
    obscureText: obscurity ?? false,
    controller: ctrl,
    obscuringCharacter: "*",
    maxLength: maxLength,
    // maxLines: 1,
    keyboardType: keyboardtype,
    inputFormatters: inputFormate,
    decoration: InputDecoration(
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue,
          width: 5,
        ),
      ),
      errorText: errortext,
      prefixIcon: prefixicn,
      suffixIcon: suffixicn,
      hintText: hinttxt,
      labelText: labeltxt,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.purple,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.black87,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    validator: validator,
    onChanged: onchanged,
  );
}
