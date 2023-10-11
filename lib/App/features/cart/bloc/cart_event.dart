// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';

abstract class CartEvent {}

class CartInitialEvent extends CartEvent {}

class CartRemoveCartEvent extends CartEvent {
  final FishDataModel clickedFish;
  CartRemoveCartEvent({
    required this.clickedFish,
  });
}
