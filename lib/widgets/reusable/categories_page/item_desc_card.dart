import 'package:flutter/material.dart';

class ItemDescCard extends StatelessWidget {
  final String title;
  final String number;
 

  const ItemDescCard({super.key,
   required this.title,
    required this.number,
    }
    );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color:const Color(0xffFFE500),
        ),
        child: Center(
          child: Text(number.toString(),
          style: const TextStyle(
            fontSize: 16,
          ),),
        ),
      ),
      SizedBox(
        width: 270,
        child: Text(
          title,
          style:  TextStyle(
            fontSize: 15, color:const Color(0xff383636).withOpacity(0.75),
          ),
           ),
      ),
    ],
    );
  }
}
