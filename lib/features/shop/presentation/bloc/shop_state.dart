part of 'shop_bloc.dart';

abstract class ShopState extends Equatable {
  const ShopState();

  @override
  List<Object> get props => [];
}

class ShopInitial extends ShopState {}

class ShopLoadInProgress extends ShopState {}

class ShopLoadSuccess extends ShopState {
  const ShopLoadSuccess({required this.model});
  final ProductResponseModel model;

  @override
  List<Object> get props => [model];
}

class ShopLoadFailure extends ShopState {
  const ShopLoadFailure({this.message});
  final String? message;

  @override
  List<Object> get props => [message!];
}
