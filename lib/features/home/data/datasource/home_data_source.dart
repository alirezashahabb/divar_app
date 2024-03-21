import 'package:dio/dio.dart';
import 'package:divar/features/home/data/model/promotion_model.dart';
import 'package:divar/networkUtils/api_exption.dart';

abstract class IHomeDataSource {
  Future<List<PromotionModel>> getHottestPromotion();
}

class HomeRemoteDataSource extends IHomeDataSource {
  final Dio _dio;
  HomeRemoteDataSource(this._dio);

  @override
  Future<List<PromotionModel>> getHottestPromotion() async {
    Map<String, dynamic> qParams = {'filter': 'is_hot = true'};
    try {
      Response response = await _dio.get('collections/promotion/records',
          queryParameters: qParams);
      return response.data['items']
          .map<PromotionModel>((jsonMap) => PromotionModel.fromJson(jsonMap))
          .toList();
    } on DioException catch (ex) {
      throw ApiException(ex.response?.statusCode, ex.message);
    } catch (e) {
      throw ApiException(
        0,
        'unknown',
      );
    }
  }
}
