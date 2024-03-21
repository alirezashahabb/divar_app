import 'package:divar/constant/string_constant.dart';

class PromotionModel {
  final int price;
  final String collectionId;
  final String id;
  final String description;
  final String name;
  final bool isHot;
  final bool isVerified;
  final String thumbnail;

  PromotionModel({
    required this.price,
    required this.collectionId,
    required this.id,
    required this.description,
    required this.name,
    required this.isHot,
    required this.isVerified,
    required this.thumbnail,
  });

  factory PromotionModel.fromJson(Map<String, dynamic> jsonObject) {
    return PromotionModel(
      price: jsonObject['price'],
      collectionId: jsonObject['collectionId'],
      id: jsonObject['id'],
      description: jsonObject['description'],
      name: jsonObject['name'],
      isHot: jsonObject['is_hot'],
      isVerified: jsonObject['is_verified'],
      thumbnail:
          '${StringConstant.baseUrl}files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
    );
  }
}
