// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_app_reponsive_ui/konstant.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';

class ProductDescribtion extends StatelessWidget {
  const ProductDescribtion({
    Key? key,
    required this.defaultSize,
    required this.product,
  }) : super(key: key);

  final double? defaultSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: defaultSize! * 9,
        left: defaultSize! * 2,
        right: defaultSize! * 2,
      ),
      constraints: BoxConstraints(minHeight: defaultSize! * 33),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle,
            style: TextStyle(
              fontSize: defaultSize! * 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: defaultSize! * 1.7,
          ),
          Text(
            product.description,
            style: TextStyle(
              fontSize: defaultSize! * 1.6,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: defaultSize! * 3,
          ),
          FlatButton(
            minWidth: double.infinity,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              "Add To Cart",
              style: TextStyle(
                fontSize: defaultSize! * 1.6,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
