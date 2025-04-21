// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartsResponse _$CartsResponseFromJson(Map<String, dynamic> json) {
  return _CartsResponse.fromJson(json);
}

/// @nodoc
mixin _$CartsResponse {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  List<ProductsResponse> get products => throw _privateConstructorUsedError;

  /// Serializes this CartsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartsResponseCopyWith<CartsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartsResponseCopyWith<$Res> {
  factory $CartsResponseCopyWith(
          CartsResponse value, $Res Function(CartsResponse) then) =
      _$CartsResponseCopyWithImpl<$Res, CartsResponse>;
  @useResult
  $Res call({int id, int userId, List<ProductsResponse> products});
}

/// @nodoc
class _$CartsResponseCopyWithImpl<$Res, $Val extends CartsResponse>
    implements $CartsResponseCopyWith<$Res> {
  _$CartsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartsResponseImplCopyWith<$Res>
    implements $CartsResponseCopyWith<$Res> {
  factory _$$CartsResponseImplCopyWith(
          _$CartsResponseImpl value, $Res Function(_$CartsResponseImpl) then) =
      __$$CartsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, List<ProductsResponse> products});
}

/// @nodoc
class __$$CartsResponseImplCopyWithImpl<$Res>
    extends _$CartsResponseCopyWithImpl<$Res, _$CartsResponseImpl>
    implements _$$CartsResponseImplCopyWith<$Res> {
  __$$CartsResponseImplCopyWithImpl(
      _$CartsResponseImpl _value, $Res Function(_$CartsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? products = null,
  }) {
    return _then(_$CartsResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartsResponseImpl implements _CartsResponse {
  const _$CartsResponseImpl(
      {required this.id,
      required this.userId,
      required final List<ProductsResponse> products})
      : _products = products;

  factory _$CartsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartsResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  final List<ProductsResponse> _products;
  @override
  List<ProductsResponse> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartsResponse(id: $id, userId: $userId, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, const DeepCollectionEquality().hash(_products));

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartsResponseImplCopyWith<_$CartsResponseImpl> get copyWith =>
      __$$CartsResponseImplCopyWithImpl<_$CartsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartsResponseImplToJson(
      this,
    );
  }
}

abstract class _CartsResponse implements CartsResponse {
  const factory _CartsResponse(
      {required final int id,
      required final int userId,
      required final List<ProductsResponse> products}) = _$CartsResponseImpl;

  factory _CartsResponse.fromJson(Map<String, dynamic> json) =
      _$CartsResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  List<ProductsResponse> get products;

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartsResponseImplCopyWith<_$CartsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) {
  return _ProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductsResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ProductsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsResponseCopyWith<ProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
          ProductsResponse value, $Res Function(ProductsResponse) then) =
      _$ProductsResponseCopyWithImpl<$Res, ProductsResponse>;
  @useResult
  $Res call(
      {int id,
      String title,
      num price,
      String description,
      String category,
      String image});
}

/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res, $Val extends ProductsResponse>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsResponseImplCopyWith<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  factory _$$ProductsResponseImplCopyWith(_$ProductsResponseImpl value,
          $Res Function(_$ProductsResponseImpl) then) =
      __$$ProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      num price,
      String description,
      String category,
      String image});
}

/// @nodoc
class __$$ProductsResponseImplCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res, _$ProductsResponseImpl>
    implements _$$ProductsResponseImplCopyWith<$Res> {
  __$$ProductsResponseImplCopyWithImpl(_$ProductsResponseImpl _value,
      $Res Function(_$ProductsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
  }) {
    return _then(_$ProductsResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsResponseImpl implements _ProductsResponse {
  const _$ProductsResponseImpl(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});

  factory _$ProductsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final num price;
  @override
  final String description;
  @override
  final String category;
  @override
  final String image;

  @override
  String toString() {
    return 'ProductsResponse(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, description, category, image);

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsResponseImplCopyWith<_$ProductsResponseImpl> get copyWith =>
      __$$ProductsResponseImplCopyWithImpl<_$ProductsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductsResponse implements ProductsResponse {
  const factory _ProductsResponse(
      {required final int id,
      required final String title,
      required final num price,
      required final String description,
      required final String category,
      required final String image}) = _$ProductsResponseImpl;

  factory _ProductsResponse.fromJson(Map<String, dynamic> json) =
      _$ProductsResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  num get price;
  @override
  String get description;
  @override
  String get category;
  @override
  String get image;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsResponseImplCopyWith<_$ProductsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
