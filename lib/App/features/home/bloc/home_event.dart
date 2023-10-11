// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeproductWishlistButtonCLickedEvent extends HomeEvent {
  final FishDataModel clickedfish;
  HomeproductWishlistButtonCLickedEvent({
    required this.clickedfish,
  });
}

class HomeproductCartButtonCLickedEvent extends HomeEvent {
  final FishDataModel clickedfish;
  HomeproductCartButtonCLickedEvent({
    required this.clickedfish,
  });
}

class HomeWishlistButtonNavigateCLickedEvent extends HomeEvent {}

class HomeCartButtonNavigateCLickedEvent extends HomeEvent {}
