import 'package:flutter/material.dart';

class NoticficationCard extends StatelessWidget {
  const NoticficationCard({super.key});

  final double cardHeight = 70;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF2E4CE),
        border: Border.all(color: Color(0xffFF9900)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "get 100% off on groceries plus T&C apply",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffFF9900),
              ),
            ),
            Text(
              "spled payments with master and visa",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xff383636).withOpacity(0.47),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
