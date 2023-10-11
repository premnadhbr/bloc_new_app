import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_new_app/App/features/home/models/home_fish_model.dart';
import '../../../data/cart_items.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cart));
  }
  
}
