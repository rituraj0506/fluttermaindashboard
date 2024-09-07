// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/Components/shoe_tile.dart';
import 'package:first_app/models/shoe.dart';
import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //searchbar
        Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "everyone flies...  some fly longer than others",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
        // hot picks

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Se all",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // create a shoe
              Shoe shoe = Shoe(
                  name: 'Air Jodan',
                  price: '2000',
                  description: 'comfortable',
                  imagePath: 'assests/images/nike2.png');
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),

        Padding(
          padding:
              const EdgeInsets.only(top: 45.0, left: 25, right: 25, bottom: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
