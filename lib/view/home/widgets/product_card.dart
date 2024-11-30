import 'package:day4/data/data_static.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(imageURL)),
              ),
              const Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nikey air force one',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'describtion',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      '100.000.000 kip',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
