// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outfit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OutfitModel _$OutfitModelFromJson(Map<String, dynamic> json) {
  return _OutfitModel.fromJson(json);
}

/// @nodoc
mixin _$OutfitModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get wishlist => throw _privateConstructorUsedError;

  /// Serializes this OutfitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OutfitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OutfitModelCopyWith<OutfitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutfitModelCopyWith<$Res> {
  factory $OutfitModelCopyWith(
          OutfitModel value, $Res Function(OutfitModel) then) =
      _$OutfitModelCopyWithImpl<$Res, OutfitModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      int price,
      String image,
      String description,
      bool wishlist});
}

/// @nodoc
class _$OutfitModelCopyWithImpl<$Res, $Val extends OutfitModel>
    implements $OutfitModelCopyWith<$Res> {
  _$OutfitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutfitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? price = null,
    Object? image = null,
    Object? description = null,
    Object? wishlist = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutfitModelImplCopyWith<$Res>
    implements $OutfitModelCopyWith<$Res> {
  factory _$$OutfitModelImplCopyWith(
          _$OutfitModelImpl value, $Res Function(_$OutfitModelImpl) then) =
      __$$OutfitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      int price,
      String image,
      String description,
      bool wishlist});
}

/// @nodoc
class __$$OutfitModelImplCopyWithImpl<$Res>
    extends _$OutfitModelCopyWithImpl<$Res, _$OutfitModelImpl>
    implements _$$OutfitModelImplCopyWith<$Res> {
  __$$OutfitModelImplCopyWithImpl(
      _$OutfitModelImpl _value, $Res Function(_$OutfitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutfitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? price = null,
    Object? image = null,
    Object? description = null,
    Object? wishlist = null,
  }) {
    return _then(_$OutfitModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutfitModelImpl implements _OutfitModel {
  const _$OutfitModelImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.price,
      required this.image,
      required this.description,
      this.wishlist = false});

  factory _$OutfitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutfitModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final int price;
  @override
  final String image;
  @override
  final String description;
  @override
  @JsonKey()
  final bool wishlist;

  @override
  String toString() {
    return 'OutfitModel(id: $id, name: $name, type: $type, price: $price, image: $image, description: $description, wishlist: $wishlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutfitModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.wishlist, wishlist) ||
                other.wishlist == wishlist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, type, price, image, description, wishlist);

  /// Create a copy of OutfitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutfitModelImplCopyWith<_$OutfitModelImpl> get copyWith =>
      __$$OutfitModelImplCopyWithImpl<_$OutfitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutfitModelImplToJson(
      this,
    );
  }
}

abstract class _OutfitModel implements OutfitModel {
  const factory _OutfitModel(
      {required final int id,
      required final String name,
      required final String type,
      required final int price,
      required final String image,
      required final String description,
      final bool wishlist}) = _$OutfitModelImpl;

  factory _OutfitModel.fromJson(Map<String, dynamic> json) =
      _$OutfitModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  int get price;
  @override
  String get image;
  @override
  String get description;
  @override
  bool get wishlist;

  /// Create a copy of OutfitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutfitModelImplCopyWith<_$OutfitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
