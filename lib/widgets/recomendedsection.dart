// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';
import 'package:furniture_app_reponsive_ui/screens/product_details_screen.dart';
import 'package:furniture_app_reponsive_ui/size_config.dart';
import 'package:furniture_app_reponsive_ui/widgets/product_card.dart';

class RecomendedSection extends StatelessWidget {
  const RecomendedSection({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: SizeConfig.orientation == Orientation.portrait ? 2 : 4,
        childAspectRatio: 0.7,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductCard(
        product: products[index],
      ),
    );
  }
}
