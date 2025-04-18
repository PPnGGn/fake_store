// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartsResponse {
  int get id;
  int get userId;
  List<ProductsResponse> get products;

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CartsResponseCopyWith<CartsResponse> get copyWith =>
      _$CartsResponseCopyWithImpl<CartsResponse>(
          this as CartsResponse, _$identity);

  /// Serializes this CartsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, const DeepCollectionEquality().hash(products));

  @override
  String toString() {
    return 'CartsResponse(id: $id, userId: $userId, products: $products)';
  }
}

/// @nodoc
abstract mixin class $CartsResponseCopyWith<$Res> {
  factory $CartsResponseCopyWith(
          CartsResponse value, $Res Function(CartsResponse) _then) =
      _$CartsResponseCopyWithImpl;
  @useResult
  $Res call({int id, int userId, List<ProductsResponse> products});
}

/// @nodoc
class _$CartsResponseCopyWithImpl<$Res>
    implements $CartsResponseCopyWith<$Res> {
  _$CartsResponseCopyWithImpl(this._self, this._then);

  final CartsResponse _self;
  final $Res Function(CartsResponse) _then;

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? products = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _self.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CartsResponse implements CartsResponse {
  const _CartsResponse(
      {required this.id,
      required this.userId,
      required final List<ProductsResponse> products})
      : _products = products;
  factory _CartsResponse.fromJson(Map<String, dynamic> json) =>
      _$CartsResponseFromJson(json);

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

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CartsResponseCopyWith<_CartsResponse> get copyWith =>
      __$CartsResponseCopyWithImpl<_CartsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CartsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'CartsResponse(id: $id, userId: $userId, products: $products)';
  }
}

/// @nodoc
abstract mixin class _$CartsResponseCopyWith<$Res>
    implements $CartsResponseCopyWith<$Res> {
  factory _$CartsResponseCopyWith(
          _CartsResponse value, $Res Function(_CartsResponse) _then) =
      __$CartsResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int id, int userId, List<ProductsResponse> products});
}

/// @nodoc
class __$CartsResponseCopyWithImpl<$Res>
    implements _$CartsResponseCopyWith<$Res> {
  __$CartsResponseCopyWithImpl(this._self, this._then);

  final _CartsResponse _self;
  final $Res Function(_CartsResponse) _then;

  /// Create a copy of CartsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? products = null,
  }) {
    return _then(_CartsResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsResponse>,
    ));
  }
}

/// @nodoc
mixin _$ProductsResponse {
  int get id;
  String get title;
  num get price;
  String get description;
  String get category;
  String get image;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductsResponseCopyWith<ProductsResponse> get copyWith =>
      _$ProductsResponseCopyWithImpl<ProductsResponse>(
          this as ProductsResponse, _$identity);

  /// Serializes this ProductsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsResponse &&
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

  @override
  String toString() {
    return 'ProductsResponse(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image)';
  }
}

/// @nodoc
abstract mixin class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
          ProductsResponse value, $Res Function(ProductsResponse) _then) =
      _$ProductsResponseCopyWithImpl;
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
class _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._self, this._then);

  final ProductsResponse _self;
  final $Res Function(ProductsResponse) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProductsResponse implements ProductsResponse {
  const _ProductsResponse(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});
  factory _ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);

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

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductsResponseCopyWith<_ProductsResponse> get copyWith =>
      __$ProductsResponseCopyWithImpl<_ProductsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsResponse &&
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

  @override
  String toString() {
    return 'ProductsResponse(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$ProductsResponseCopyWith<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  factory _$ProductsResponseCopyWith(
          _ProductsResponse value, $Res Function(_ProductsResponse) _then) =
      __$ProductsResponseCopyWithImpl;
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
class __$ProductsResponseCopyWithImpl<$Res>
    implements _$ProductsResponseCopyWith<$Res> {
  __$ProductsResponseCopyWithImpl(this._self, this._then);

  final _ProductsResponse _self;
  final $Res Function(_ProductsResponse) _then;

  /// Create a copy of ProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
  }) {
    return _then(_ProductsResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
