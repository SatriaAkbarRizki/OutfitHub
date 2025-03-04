// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outfit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutfitModelImpl _$$OutfitModelImplFromJson(Map<String, dynamic> json) =>
    _$OutfitModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      price: (json['price'] as num).toInt(),
      image: json['image'] as String,
      description: json['description'] as String,
      wishlist: json['wishlist'] as bool? ?? false,
    );

Map<String, dynamic> _$$OutfitModelImplToJson(_$OutfitModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
      'wishlist': instance.wishlist,
    };
