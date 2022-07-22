// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_reponsive_ui/konstant.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';
import 'package:furniture_app_reponsive_ui/size_config.dart';
import 'package:furniture_app_reponsive_ui/widgets/productbody.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/bag.svg"),
            onPressed: () {},
          ),
          SizedBox(
            width: SizeConfig.defaultSize,
          ),
        ],
      ),
      body: ProductBody(product: product),
    );
  }
}
