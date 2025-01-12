import 'package:day4/data/data_static.dart';
import 'package:day4/data/response.dart';
import 'package:day4/model/product_model.dart';

class ProductService {
  Future<Response> getAllData() async {
    try {
      //
      final rs = products;
      //
      return ResSuccess(data: rs);
    } catch (e) {
      return ResError(error: e.toString());
    }
  }

  Future<Response> getOnly({required int id}) async {
    try {
      final rs = products.firstWhere((e) {
        return e['id'] == id;
      });
      return ResSuccess(data: rs);
    } catch (e) {
      return ResError(error: e.toString());
    }
  }
}
