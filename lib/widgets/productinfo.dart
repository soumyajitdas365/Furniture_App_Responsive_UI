import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
    required this.defaultSize,
    required this.product,
    required this.lighttext,
  }) : super(key: key);

  final double? defaultSize;
  final Product product;
  final TextStyle lighttext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize! * 37,
      width: defaultSize! * 15,
      padding: EdgeInsets.symmetric(horizontal: defaultSize! * 2),
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
              fontSize: defaultSize! * 2.4,
              fontWeight: FontWeight.bold,
              height: 1.4,
              letterSpacing: -0.4,
            ),
          ),
          SizedBox(
            height: defaultSize! * 2,
          ),
          Text(
            "From",
            style: lighttext,
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
                fontSize: defaultSize! * 1.6, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: defaultSize! * 2,
          ),
          Text(
            "Available Colors",
            style: lighttext,
          ),
          SizedBox(
            height: defaultSize,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: defaultSize! * 2.4,
                width: defaultSize! * 2.4,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SvgPicture.asset("assets/icons/check.svg"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
