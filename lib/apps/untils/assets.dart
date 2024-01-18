import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const LinkAsset = 'assets/images/weathers/';

class AssetCustom {
  static String getLinkImg(String name) =>
      '$LinkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static const String api_token = '998242a188bebdc77bf172acd07308ee';
}

Widget createTemp(num temp, { double size = 100 }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.round().toString(),
        style:  TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
       Text(
        '0',
        style: TextStyle(
          fontSize: size /3,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  );
}
