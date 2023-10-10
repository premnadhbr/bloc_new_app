part of 'home_bloc.dart';

abstract class HomeState {}

abstract class HomeActionState{}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessState extends HomeState{}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishListPageActionState extends HomeActionState{}

class HomeNavigateToCartPageActionState extends HomeActionState{}
