import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/contants/styles.dart';

Widget customButton(BuildContext context, String label, Function() function){
  return GestureDetector(
    onTap: function,
    child: Container(
      padding: const EdgeInsets.only(top: 3, bottom: 3),
      width: MediaQuery.of(context).size.height * 2,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: primaryColor
      ),
      child: Center(child: Text( label, style: largeText.copyWith(color: Colors.white, fontSize: 18),)),
    ),
  );
}