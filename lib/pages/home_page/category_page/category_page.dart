import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page/widgets/shared/noticfication_card.dart';
import 'package:grocery_app/widgets/reusable/categories_page/category_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Categories",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NoticficationCard(),
              const SizedBox(height: 10),
              Text(
                "All Categories",
                style: TextStyle(
                  color: Color(0xff383636),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    children: [
                      CategoryCard(
                        title: "Vegetable & \nflutter",
                        description: "20+ more ...",
                        circleColor: Color(0xff0E00AC),
                        mainCategoryColor: Color(0xff0057ff).withOpacity(0.29),
                        categoryBorderColor: Color(0xff0094FF),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
