// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_reponsive_ui/konstant.dart';
import 'package:furniture_app_reponsive_ui/models/category.dart';
import 'package:furniture_app_reponsive_ui/models/products.dart';
import 'package:furniture_app_reponsive_ui/service/fetch_category_data.dart';
import 'package:furniture_app_reponsive_ui/size_config.dart';
import 'package:furniture_app_reponsive_ui/widgets/categories.dart';
import 'package:furniture_app_reponsive_ui/widgets/productcard.dart';
import 'package:furniture_app_reponsive_ui/widgets/title_text.dart';
import 'package:furniture_app_reponsive_ui/widgets/category_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          enableFeedback: false,
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: SizeConfig.defaultSize! * 1.7,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/scan.svg",
            ),
          ),
          Center(
            child: Text(
              "Scan",
              style: TextStyle(
                  color: kTextColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: defaultSize! * 2,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(title: "Browse by category"),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(
                      categories: snapshot.data as List<Category>,
                    )
                  : Center(
                      child: Image.asset("assets/ripple.gif"),
                    ),
            ),
            Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(title: "Recomended for you"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    product: product,
                    onpress: () {},
                  ),
                  ProductCard(
                    product: product,
                    onpress: () {},
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
