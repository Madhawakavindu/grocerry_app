import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final Color circleColor;
  final Color mainCategoryColor;
  final Color categoryBorderColor;


  const CategoryCard(
    {super.key,
     required this.title,
     required this.description,
     required this.circleColor,
     required this.mainCategoryColor, 
     required this.categoryBorderColor}
        );

  final double cardWidth = 190;
  final double cardHeight = 90;
  final double circleRadius = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        color: mainCategoryColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: categoryBorderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff383636).withOpacity(0.91),
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Container(
              width: circleRadius,
              height: circleRadius,
              decoration: BoxDecoration(
                color: circleColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
