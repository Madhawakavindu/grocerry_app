import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page/widgets/search_bar.dart';
import 'package:grocery_app/widgets/app_bar/app_bar.dart';
import 'package:grocery_app/widgets/reusable/home_page/product_card.dart';
import 'package:grocery_app/widgets/reusable/home_page/product_price_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,

        title: appBarTitle,

        actions: appBarActions,

        shadowColor: Colors.black12,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),

              Text(
                "Expore Categories",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "b b  jghh",
                    description: "jhvjgf",
                    titleColor: Colors.white,
                    descColor: Color(0xffC3C3C3),
                    mainBoxColor: Color(0xff9E00FF),
                    smallBoxColor: Color(0xff06FFA5),
                  ),
                  ProductCard(
                    title: "b b  jghh",
                    description: "jhvjgf",
                    titleColor: Colors.white,
                    descColor: Color(0xffC3C3C3),
                    mainBoxColor: Color(0xff9E00FF),
                    smallBoxColor: Color(0xff06FFA5),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "b b  jghh",
                    description: "jhvjgf",
                    titleColor: Colors.black,
                    descColor: Color(0xff686060),
                    mainBoxColor: Color(0xffFFE500),
                    smallBoxColor: Color(0xffFF9900),
                  ),
                  ProductCard(
                    title: "b b  jghh",
                    description: "jhvjgf",
                    titleColor: Colors.black,
                    descColor: Color(0xff686060),
                    mainBoxColor: Color(0xff9E00FF),
                    smallBoxColor: Color(0xffFF9900),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "For Sale and low cost",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductPriceCard(
                    title: "washing liquid",
                    amount: 220,
                    price: 230,
                    unit: "ml",
                  ),
                  ProductPriceCard(
                    title: "washing liquid",
                    amount: 220,
                    price: 230,
                    unit: "ml",
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
