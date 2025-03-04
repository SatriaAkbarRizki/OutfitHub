import 'package:freezed_annotation/freezed_annotation.dart';

part 'outfit.g.dart';
part 'outfit.freezed.dart';

@freezed
class OutfitModel with _$OutfitModel {
  const factory OutfitModel(
      {required int id,
      required String name,
      required String type,
      required int price,
      required String image,
      required String description,
      @Default(false) bool wishlist}) = _OutfitModel;


  factory OutfitModel.fromJson(Map<String, Object?> outfit) =>
      _$OutfitModelFromJson(outfit);
}
