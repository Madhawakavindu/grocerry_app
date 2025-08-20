import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page/widgets/shared/gradient_button.dart';
import 'package:grocery_app/pages/home_page/widgets/shared/noticfication_card.dart';
import 'package:grocery_app/widgets/reusable/product_details/price_card.dart';
import 'package:grocery_app/widgets/reusable/product_details/title_desc_card.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Product Details",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NoticficationCard(),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFF500).withOpacity(0.29),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.card_travel,
                      size: 200,
                      color: const Color(0xff333333).withOpacity(0.75),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const TitleDescCard(
                title: "product information",
                description: "vegetable.............",
              ),
              const SizedBox(height: 15),
              const TitleDescCard(
                title: "product information",
                description: "vegetable.............",
              ),
              const SizedBox(height: 15),
              Text(
                "Price List",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff383636),
                ),
              ),
              const SizedBox(height: 15),
              const PriceCard(
                productNumber: 1,
                productName: "Green peas",
                productWeight: 100,
                unit: "g",
              ),
              const PriceCard(
                productNumber: 1,
                productName: "Brussels sprouts",
                productWeight: 21,
                unit: "g",
              ),
              const PriceCard(
                productNumber: 1,
                productName: "Coca Cola",
                productWeight: 23.3,
                unit: "l",
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 70),
                  Text(
                    "230\$",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff9E00FF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const GradientButton(
                    buttonTitle: "Proceed to Pay",
                    topColor: Color(0xffCC00FF),
                    bottomColor: Color(0xffFFE500),
                    buttonHeight: 350,
                    buttonWidth: 50,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
