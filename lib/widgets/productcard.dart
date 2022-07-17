import 'package:flutter/material.dart';
import 'package:furniture_app_reponsive_ui/konstant.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';
import 'package:furniture_app_reponsive_ui/size_config.dart';
import 'package:furniture_app_reponsive_ui/widgets/title_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.onpress,
  }) : super(key: key);

  final Product product;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: onpress(),
      child: Container(
        margin: EdgeInsets.all(defaultSize! * 2),
        width: defaultSize * 17,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif", image: product.image),
              ),
              TitleText(title: product.title),
              SizedBox(
                height: defaultSize / 1,
              ),
              Text("\$${product.price}"),
            ],
          ),
        ),
      ),
    );
  }
}
