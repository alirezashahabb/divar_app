import 'package:dio/dio.dart';
import 'package:divar/constant/string_constant.dart';

class DioProvider {
  static Dio createDio() {
    return Dio(
      BaseOptions(
        baseUrl: StringConstant.baseUrl,
      ),
    );
  }
}
