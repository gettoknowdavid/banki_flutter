import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  const Category({required this.data});
  final CategoryData data;

  @override
  List<Object?> get props => [data];
}
