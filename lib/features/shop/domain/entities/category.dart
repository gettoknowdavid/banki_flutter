import 'package:equatable/equatable.dart';

import 'category_attributes.dart';

class Category extends Equatable {
  const Category({required this.id, required this.attributes});
  final int id;
  final CategoryAttributes attributes;

  @override
  List<Object?> get props => [id, attributes];
}
