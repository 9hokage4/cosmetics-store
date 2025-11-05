import 'package:flutter/material.dart';

class SaleProductCard extends StatelessWidget {
  final String imagePath;
  final String discount;
  final String oldPrice;
  final String newPrice;
  final String category;
  final String name;
  const SaleProductCard({
    super.key,
    required this.imagePath,
    required this.discount,
    required this.oldPrice,
    required this.newPrice,
    required this.category,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 140,
      decoration: BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 160,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),

                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/sale.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(height: 8),
                      Text(
                        discount,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(category, style: TextStyle(fontSize: 10, color: Colors.grey)),
          const SizedBox(height: 2),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    newPrice,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Text(
                    oldPrice,
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
