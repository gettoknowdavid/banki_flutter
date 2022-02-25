import 'package:equatable/equatable.dart';

import 'category_attributes.dart';

class CategoryData extends Equatable {
  const CategoryData({required this.id, required this.attributes});
  final String id;
  final CategoryAttributes attributes;

  @override
  List<Object?> get props => [id, attributes];
}
