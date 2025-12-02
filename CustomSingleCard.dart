import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSingleCard extends StatelessWidget {
  const CustomSingleCard({
    super.key,
    required this.imageName,
    required this.prodName,
    this.prodDescription,
    required this.prodPrice,
    this.prodRating,
  });
  final String imageName;
  final String prodName;
  final String? prodDescription;
  final double prodPrice;
  final double? prodRating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 10,
        child: SizedBox(
          height: 1000,
          width: 1000,
          child: Column(
            children: [
              Image.network(imageName),
              SizedBox(height: 10),
              Text(prodName),
              SizedBox(height: 10),
              Text(prodDescription!),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(prodPrice.toString()),
                  SizedBox(height: 10),
                  FaIcon(Icons.star_half_rounded, color: Colors.amber,),
                  Text(prodRating.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
