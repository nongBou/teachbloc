import 'package:day4/data/data_static.dart';
import 'package:day4/viewmodel/homepage/homepage_event.dart';
import 'package:day4/viewmodel/homepage/homepage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc() : super(HomepageInit()) {
    on<HomePageGetAllData>(getalldata);
    on<HomePageGetOnly>(getonly);
  }

  getonly(HomePageGetOnly event, Emitter<HomepageState> emit) async {
    try {
      emit(HomepageLoading());
      final rs = products.firstWhere((e) {
        return e['id'] == event.id;
      });

      await Future.delayed(Duration(seconds: 2));
      emit(HomepageSuccess(dataFromID: rs));
    } catch (e) {
      emit(HomepageFail(error: e.toString()));
    }
  }

  getalldata(HomePageGetAllData event, Emitter<HomepageState> emit) async {
    try {
      emit(HomepageLoading());
      final rs = products;
      await Future.delayed(Duration(seconds: 2));
      emit(HomepageSuccess(data: rs));
    } catch (e) {
      emit(HomepageFail(error: e.toString()));
    }
  }
}
