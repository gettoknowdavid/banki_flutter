import 'package:banki_flutter/common/app_constants.dart';
import 'package:banki_flutter/core/error/failure.dart';
import 'package:banki_flutter/core/usecase/usecase.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response.dart';
import 'package:banki_flutter/features/shop/domain/usecases/get_all_products.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc({required this.getAllProducts}) : super(ShopInitial()) {
    on<ShopProductsGet>((event, emit) async {
      emit(ShopLoadInProgress());
      final _result = await getAllProducts(NoParams());
      _result!.fold(
        (failure) {
          emit(ShopLoadFailure(message: _mapFailureToMessage(failure)));
        },
        (model) {
          emit(ShopLoadSuccess(model: model));
        },
      );
    });
  }

  final GetAllProducts getAllProducts;

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
