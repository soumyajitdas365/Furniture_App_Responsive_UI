import 'package:flutter/material.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';
import 'package:furniture_app_reponsive_ui/size_config.dart';
import 'package:furniture_app_reponsive_ui/widgets/productcard.dart';

class RecomendedSection extends StatelessWidget {
  const RecomendedSection({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var defaultSize = SizeConfig.defaultSize;
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
      itemBuilder: (BuildContext context, int index) =>
          ProductCard(product: products[index], onpress: () {}),
    );
  }
}
