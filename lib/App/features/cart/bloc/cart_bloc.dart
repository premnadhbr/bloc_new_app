import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_new_app/App/features/home/models/home_fish_model.dart';
import '../../../data/cart_items.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveCartEvent>(cartRemoveCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cart));
  }

  FutureOr<void> cartRemoveCartEvent(
      CartRemoveCartEvent event, Emitter<CartState> emit) async {
    cart.remove(event.clickedFish);
    emit(CartSuccessState(cartItems: cart));
    emit(CartItemRemovedState());
  }
}
