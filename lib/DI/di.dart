import 'package:dio/dio.dart';
import 'package:divar/networkUtils/dio_provider.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.instance;

Future<void> getItInit() async {
  /// this method for provider dio on getIt
  locator.registerSingleton<Dio>(
    DioProvider.createDio(),
  );
}
