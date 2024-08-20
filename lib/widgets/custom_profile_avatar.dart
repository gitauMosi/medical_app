import 'package:flutter/material.dart';

Widget cutsomProfileAvatar(BuildContext context, String image) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.25,
    height: MediaQuery.of(context).size.width * 0.25,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage( image: AssetImage(image), fit: BoxFit.cover)),   
           
  );
}
