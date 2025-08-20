import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final int productNumber;
  final String productName;
  final double productWeight;
  final String unit;
  const PriceCard({
    super.key,
    required this.productNumber,
    required this.productName,
    required this.productWeight,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffFFE500),
              ),
              child: Center(
                child: Text(
                  productNumber.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                productName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xffD9D9D9).withOpacity(0.4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${productWeight.toStringAsFixed(2)} $unit",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: const Center(child: Icon(Icons.add)),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: const Center(child: Icon(Icons.remove)),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        const Divider(),
      ],
    );
  }
}
