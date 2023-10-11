import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_new_app/App/data/cart_items.dart';
import 'package:bloc_new_app/App/data/fishes_data.dart';
import 'package:bloc_new_app/App/data/wishlist_items.dart';
import 'package:bloc_new_app/App/features/home/models/home_fish_model.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeWishlistButtonNavigateCLickedEvent>(
        homeWishlistButtonNavigateCLickedEvent);
    on<HomeCartButtonNavigateCLickedEvent>(homeCartButtonNavigateCLickedEvent);
    on<HomeproductWishlistButtonCLickedEvent>(
        homeproductWishlistButtonCLickedEvent);
    on<HomeproductCartButtonCLickedEvent>(homeproductCartButtonCLickedEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeLoadedSuccessState(
        fishes: FisheryHub.aquariumFishList
            .map((e) => FishDataModel(
                id: e['id'],
                name: e['name'],
                description: e['description'],
                price: e['price'],
                imageUrl: e['imageUrl']))
            .toList()));
  }

  FutureOr<void> homeWishlistButtonNavigateCLickedEvent(
      HomeWishlistButtonNavigateCLickedEvent event, Emitter<HomeState> emit) {
    print('homeWishlistButtonNavigateCLickedEvent CLicked ');
    emit(HomeNavigateToWishListPageActionState());
  }

  FutureOr<void> homeCartButtonNavigateCLickedEvent(
      HomeCartButtonNavigateCLickedEvent event, Emitter<HomeState> emit) {
    print('homeCartButtonNavigateCLickedEvent clicked');
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeproductWishlistButtonCLickedEvent(
      HomeproductWishlistButtonCLickedEvent event, Emitter<HomeState> emit) {
    print('HomeproductWishlistButtonCLickedEvent ');
    wishlist.add(event.clickedfish);
    emit(HomeFishWishlistedActionState());
  }

  FutureOr<void> homeproductCartButtonCLickedEvent(
      HomeproductCartButtonCLickedEvent event, Emitter<HomeState> emit) {
    print('homeproductCartButtonCLickedEvent');
    cart.add(event.clickedfish);
    emit(HomeFishCartedActionState());
  }
}
