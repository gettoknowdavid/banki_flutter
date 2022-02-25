import 'package:equatable/equatable.dart';

class ProductImageAttributes extends Equatable {
  const ProductImageAttributes({required this.url});
  final String url;

  @override
  List<Object?> get props => [url];
}
