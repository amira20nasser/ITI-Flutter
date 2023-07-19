import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/headline_with_acrion.dart';
import '../widgets/my_home_card.dart';
import '../models/property.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Property> pro = [
    const Property(
      name: "Home in Cairo,Egypt",
      address: "Maadi Cairo Egypt",
      rating: 4.9,
      area: 95,
      price: "\$290",
      isFav: true,
    ),
    Property(
      name: Faker.instance.name.fullName(),
      address: Faker.instance.address.cityName(),
      rating: Faker.instance.datatype.float(min: 0.1, max: 6.0),
      area: Faker.instance.datatype.number(min: 70, max: 400),
      price: Faker.instance.commerce.price(),
      isFav: Faker.instance.datatype.boolean(),
    ),
    Property(
      name: Faker.instance.name.fullName(),
      address: Faker.instance.address.cityName(),
      rating: Faker.instance.datatype.float(min: 0.1, max: 6.0),
      area: Faker.instance.datatype.number(min: 70, max: 400),
      price: Faker.instance.commerce.price(),
      isFav: Faker.instance.datatype.boolean(),
    ),
    Property(
      name: Faker.instance.name.fullName(),
      address: Faker.instance.address.cityName(),
      rating: Faker.instance.datatype.float(min: 0.1, max: 6.0),
      area: Faker.instance.datatype.number(min: 70, max: 400),
      price: Faker.instance.commerce.price(),
      isFav: Faker.instance.datatype.boolean(),
    ),
    Property(
      name: Faker.instance.name.fullName(),
      address: Faker.instance.address.cityName(),
      rating: Faker.instance.datatype.float(min: 0.1, max: 6.0),
      area: Faker.instance.datatype.number(min: 70, max: 400),
      price: Faker.instance.commerce.price(),
      isFav: Faker.instance.datatype.boolean(),
    ),
    Property(
      name: Faker.instance.name.fullName(),
      address: Faker.instance.address.cityName(),
      rating: Faker.instance.datatype.float(min: 0.1, max: 6.0),
      area: Faker.instance.datatype.number(min: 70, max: 400),
      price: Faker.instance.commerce.price(),
      isFav: Faker.instance.datatype.boolean(),
    ),
    Property(
      name: Faker.instance.name.fullName(),
      address: Faker.instance.address.cityName(),
      rating: Faker.instance.datatype.float(min: 0.1, max: 6.0),
      area: Faker.instance.datatype.number(min: 70, max: 400),
      price: Faker.instance.commerce.price(),
      isFav: Faker.instance.datatype.boolean(),
    ),
    Property(
      name: Faker.instance.name.fullName(),
      address: Faker.instance.address.cityName(),
      rating: Faker.instance.datatype.float(min: 0.1, max: 6.0),
      area: Faker.instance.datatype.number(min: 70, max: 400),
      price: Faker.instance.commerce.price(),
      isFav: Faker.instance.datatype.boolean(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 3"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.info),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const HeadlineWithAction(
              tite: "Wishlist",
              showAction: true,
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: pro.length,
                separatorBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Divider(
                        color: AppColors.favRed,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.lightBlue,
                          ),
                          child: Text(
                            "${index + 1}",
                            style: const TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ),
                itemBuilder: (_, index) => MyHomeCard(p: pro[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
