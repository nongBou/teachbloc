import 'package:day4/model/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class HomepageState extends Equatable {}

class HomepageInit extends HomepageState {
  @override
  List<Object?> get props => [];
}

class HomepageLoading extends HomepageState {
  @override
  List<Object?> get props => [];
}

class HomepageSuccess extends HomepageState {
  final List<ProductModel>? data;
  final Map? dataFromID;
  HomepageSuccess({this.data, this.dataFromID});
  @override
  List<Object?> get props => [
        data,
        dataFromID,
      ];
}

class HomepageFail extends HomepageState {
  final String error;
  HomepageFail({required this.error});
  @override
  List<Object?> get props => [
        error,
      ];
}
