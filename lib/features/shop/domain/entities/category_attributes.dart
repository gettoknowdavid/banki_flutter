import 'package:equatable/equatable.dart';

class CategoryAttributes extends Equatable {
  const CategoryAttributes({required this.name});
  final String? name;

  @override
  List<Object?> get props => [name];
}
