// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_reponsive_ui/konstant.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';
import 'package:furniture_app_reponsive_ui/size_config.dart';
import 'package:furniture_app_reponsive_ui/widgets/productdescribtion.dart';
import 'package:furniture_app_reponsive_ui/widgets/productinfo.dart';

class ProductBody extends StatelessWidget {
  ProductBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    TextStyle lighttext = TextStyle(color: kTextColor.withOpacity(0.7));
    // Size size = MediaQuery.of(context).size;
    var defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: SizeConfig.screenHeight,
          width: double.infinity,
          child: Stack(
            children: [
              ProductInfo(
                  defaultSize: defaultSize,
                  product: product,
                  lighttext: lighttext),
              Positioned(
                top: defaultSize! * 37.5,
                left: 0,
                right: 0,
                bottom: 0,
                child: ProductDescribtion(
                  defaultSize: defaultSize,
                  product: product,
                ),
              ),
              Positioned(
                right: -defaultSize * 7,
                top: defaultSize * 12,
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                    height: defaultSize * 37,
                    width: defaultSize * 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
