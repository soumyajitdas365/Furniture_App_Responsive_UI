// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_app_reponsive_ui/konstant.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';
import 'package:furniture_app_reponsive_ui/size_config.dart';

class ProductBody extends StatelessWidget {
  ProductBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    TextStyle lighttext = TextStyle(color: kTextColor.withOpacity(0.7));
    var defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: defaultSize! * 37,
              width: defaultSize * 15,
              padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product.category.toUpperCase(),
                    style: lighttext,
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  Text(
                    product.title,
                    style: TextStyle(
                      fontSize: defaultSize * 2.4,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                      letterSpacing: -0.4,
                    ),
                  ),
                  SizedBox(
                    height: defaultSize * 2,
                  ),
                  Text(
                    "From",
                    style: lighttext,
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                        fontSize: defaultSize * 1.6,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultSize * 2,
                  ),
                  Text(
                    "Available Colors",
                    style: lighttext,
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  Row(
                    children: [],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
