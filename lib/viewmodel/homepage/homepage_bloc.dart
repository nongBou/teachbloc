import 'package:day4/data/data_static.dart';
import 'package:day4/data/response.dart';
import 'package:day4/model/product_model.dart';
import 'package:day4/services/product_service.dart';
import 'package:day4/viewmodel/homepage/homepage_event.dart';
import 'package:day4/viewmodel/homepage/homepage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  final ProductService service;
  HomepageBloc({required this.service}) : super(HomepageInit()) {
    on<HomePageGetAllData>(getalldata);
    on<HomePageGetOnly>(getonly);
  }

  getonly(HomePageGetOnly event, Emitter<HomepageState> emit) async {
    try {
      emit(HomepageLoading());
      final rs = await service.getOnly(id: event.id);
      await Future.delayed(const Duration(seconds: 2));
      if (rs is ResSuccess) {
        emit(HomepageSuccess(dataFromID: rs.data));
      } else if (rs is ResError) {
        emit(HomepageFail(error: rs.error));
      }
    } catch (e) {
      emit(HomepageFail(error: e.toString()));
    }
  }

  getalldata(HomePageGetAllData event, Emitter<HomepageState> emit) async {
    emit(HomepageLoading());
    final rs = await service.getAllData();
    await Future.delayed(const Duration(seconds: 2));
    if (rs is ResSuccess) {
      emit(HomepageSuccess(data: ProductModel.toList(rs.data)));
    } else if (rs is ResError) {
      emit(HomepageFail(error: rs.error));
    }
  }
}
