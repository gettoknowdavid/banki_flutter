import 'package:equatable/equatable.dart';

class StrapiImageAttributes extends Equatable {
  const StrapiImageAttributes({required this.url});
  final String url;

  @override
  List<Object?> get props => [url];
}
