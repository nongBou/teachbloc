import 'package:day4/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel model;
  const ProductCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      model.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
              ),
              const Positioned(
                top: 10,
                right: 10,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                // Text(
                //   model.,
                //   style: TextStyle(color: Colors.grey),
                // ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      model.price.toString(),
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
