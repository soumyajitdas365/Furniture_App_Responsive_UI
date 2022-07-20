import 'package:flutter/material.dart';

import '../size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.title, font}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    double? fontsize = defaultSize! * 1.6;
    return Text(
      title,
      style: TextStyle(
        fontSize: fontsize, //16
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
