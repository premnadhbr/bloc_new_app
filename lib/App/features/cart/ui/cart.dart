import 'package:bloc_new_app/App/features/cart/bloc/cart_bloc.dart';
import 'package:bloc_new_app/App/features/cart/ui/cartTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final CartBloc cartBloc = CartBloc();
  @override
  void initState() {
    super.initState();
    cartBloc.add(CartInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Items'),
      ),
      body: BlocConsumer<CartBloc, CartState>(
        bloc: cartBloc,
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is! CartActionState,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case CartSuccessState:
              final succesState = state as CartSuccessState;
              return ListView.builder(
                itemCount: succesState.cartItems.length,
                itemBuilder: (context, index) {
                  return CartTile(
                      fishDataModel: succesState.cartItems[index],
                      cartBloc: cartBloc);
                },
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
