import 'package:bloc_new_app/App/features/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_new_app/App/features/home/models/home_fish_model.dart';

class CartTile extends StatelessWidget {
  final FishDataModel fishDataModel;
  final CartBloc cartBloc;
  const CartTile({
    Key? key,
    required this.fishDataModel,
    required this.cartBloc,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ' + fishDataModel.price.toString(),
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
