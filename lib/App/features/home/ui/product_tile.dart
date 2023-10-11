import 'package:flutter/cupertino.dart';
import 'package:bloc_new_app/App/features/home/models/home_fish_model.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final FishDataModel fishDataModel;
  const ProductTile({
    Key? key,
    required this.fishDataModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color.fromARGB(255, 27, 46, 44)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(fishDataModel.imageUrl),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            fishDataModel.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(fishDataModel.description,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '\$ ' + fishDataModel.price.toString(),
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_bag_outlined)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
