part of 'cart_bloc.dart';

abstract class CartState {}

abstract class CartActionState extends CartState {}

class CartInitial extends CartState {}

class CartSuccessState extends CartState {
  final List<FishDataModel> cartItems;
  CartSuccessState({
    required this.cartItems,
  });
}

class CartItemRemovedState extends CartState{}