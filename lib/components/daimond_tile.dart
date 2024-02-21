import 'package:flutter/material.dart';
import '../models/daimond.dart';


// ignore: must_be_immutable
class DaimondTile  extends StatelessWidget {
  Daimond daimond;
  DaimondTile ({super.key,required this.daimond});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Image.asset(daimond.imagePath)
        ],
      ),
    );
  }
}