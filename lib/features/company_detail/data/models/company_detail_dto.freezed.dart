// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyDetailDto {

 String get logo;@JsonKey(name: 'company_name') String get companyName; String get description; String get isin; String get status;@JsonKey(name: 'pros_and_cons') ProsAndConsDto get prosAndCons; FinancialsDto get financials;@JsonKey(name: 'issuer_details') IssuerDetailDto get issuerDetails;
/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyDetailDtoCopyWith<CompanyDetailDto> get copyWith => _$CompanyDetailDtoCopyWithImpl<CompanyDetailDto>(this as CompanyDetailDto, _$identity);

  /// Serializes this CompanyDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyDetailDto&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.prosAndCons, prosAndCons) || other.prosAndCons == prosAndCons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,prosAndCons,financials,issuerDetails);

@override
String toString() {
  return 'CompanyDetailDto(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class $CompanyDetailDtoCopyWith<$Res>  {
  factory $CompanyDetailDtoCopyWith(CompanyDetailDto value, $Res Function(CompanyDetailDto) _then) = _$CompanyDetailDtoCopyWithImpl;
@useResult
$Res call({
 String logo,@JsonKey(name: 'company_name') String companyName, String description, String isin, String status,@JsonKey(name: 'pros_and_cons') ProsAndConsDto prosAndCons, FinancialsDto financials,@JsonKey(name: 'issuer_details') IssuerDetailDto issuerDetails
});


$ProsAndConsDtoCopyWith<$Res> get prosAndCons;$FinancialsDtoCopyWith<$Res> get financials;$IssuerDetailDtoCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class _$CompanyDetailDtoCopyWithImpl<$Res>
    implements $CompanyDetailDtoCopyWith<$Res> {
  _$CompanyDetailDtoCopyWithImpl(this._self, this._then);

  final CompanyDetailDto _self;
  final $Res Function(CompanyDetailDto) _then;

/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? prosAndCons = null,Object? financials = null,Object? issuerDetails = null,}) {
  return _then(_self.copyWith(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,prosAndCons: null == prosAndCons ? _self.prosAndCons : prosAndCons // ignore: cast_nullable_to_non_nullable
as ProsAndConsDto,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as FinancialsDto,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetailDto,
  ));
}
/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsDtoCopyWith<$Res> get prosAndCons {
  
  return $ProsAndConsDtoCopyWith<$Res>(_self.prosAndCons, (value) {
    return _then(_self.copyWith(prosAndCons: value));
  });
}/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsDtoCopyWith<$Res> get financials {
  
  return $FinancialsDtoCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailDtoCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailDtoCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyDetailDto].
extension CompanyDetailDtoPatterns on CompanyDetailDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyDetailDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String logo, @JsonKey(name: 'company_name')  String companyName,  String description,  String isin,  String status, @JsonKey(name: 'pros_and_cons')  ProsAndConsDto prosAndCons,  FinancialsDto financials, @JsonKey(name: 'issuer_details')  IssuerDetailDto issuerDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyDetailDto() when $default != null:
return $default(_that.logo,_that.companyName,_that.description,_that.isin,_that.status,_that.prosAndCons,_that.financials,_that.issuerDetails);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String logo, @JsonKey(name: 'company_name')  String companyName,  String description,  String isin,  String status, @JsonKey(name: 'pros_and_cons')  ProsAndConsDto prosAndCons,  FinancialsDto financials, @JsonKey(name: 'issuer_details')  IssuerDetailDto issuerDetails)  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailDto():
return $default(_that.logo,_that.companyName,_that.description,_that.isin,_that.status,_that.prosAndCons,_that.financials,_that.issuerDetails);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String logo, @JsonKey(name: 'company_name')  String companyName,  String description,  String isin,  String status, @JsonKey(name: 'pros_and_cons')  ProsAndConsDto prosAndCons,  FinancialsDto financials, @JsonKey(name: 'issuer_details')  IssuerDetailDto issuerDetails)?  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailDto() when $default != null:
return $default(_that.logo,_that.companyName,_that.description,_that.isin,_that.status,_that.prosAndCons,_that.financials,_that.issuerDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyDetailDto implements CompanyDetailDto {
  const _CompanyDetailDto({required this.logo, @JsonKey(name: 'company_name') required this.companyName, required this.description, required this.isin, required this.status, @JsonKey(name: 'pros_and_cons') required this.prosAndCons, required this.financials, @JsonKey(name: 'issuer_details') required this.issuerDetails});
  factory _CompanyDetailDto.fromJson(Map<String, dynamic> json) => _$CompanyDetailDtoFromJson(json);

@override final  String logo;
@override@JsonKey(name: 'company_name') final  String companyName;
@override final  String description;
@override final  String isin;
@override final  String status;
@override@JsonKey(name: 'pros_and_cons') final  ProsAndConsDto prosAndCons;
@override final  FinancialsDto financials;
@override@JsonKey(name: 'issuer_details') final  IssuerDetailDto issuerDetails;

/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyDetailDtoCopyWith<_CompanyDetailDto> get copyWith => __$CompanyDetailDtoCopyWithImpl<_CompanyDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyDetailDto&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.prosAndCons, prosAndCons) || other.prosAndCons == prosAndCons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,prosAndCons,financials,issuerDetails);

@override
String toString() {
  return 'CompanyDetailDto(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class _$CompanyDetailDtoCopyWith<$Res> implements $CompanyDetailDtoCopyWith<$Res> {
  factory _$CompanyDetailDtoCopyWith(_CompanyDetailDto value, $Res Function(_CompanyDetailDto) _then) = __$CompanyDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 String logo,@JsonKey(name: 'company_name') String companyName, String description, String isin, String status,@JsonKey(name: 'pros_and_cons') ProsAndConsDto prosAndCons, FinancialsDto financials,@JsonKey(name: 'issuer_details') IssuerDetailDto issuerDetails
});


@override $ProsAndConsDtoCopyWith<$Res> get prosAndCons;@override $FinancialsDtoCopyWith<$Res> get financials;@override $IssuerDetailDtoCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class __$CompanyDetailDtoCopyWithImpl<$Res>
    implements _$CompanyDetailDtoCopyWith<$Res> {
  __$CompanyDetailDtoCopyWithImpl(this._self, this._then);

  final _CompanyDetailDto _self;
  final $Res Function(_CompanyDetailDto) _then;

/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? prosAndCons = null,Object? financials = null,Object? issuerDetails = null,}) {
  return _then(_CompanyDetailDto(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,prosAndCons: null == prosAndCons ? _self.prosAndCons : prosAndCons // ignore: cast_nullable_to_non_nullable
as ProsAndConsDto,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as FinancialsDto,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetailDto,
  ));
}

/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsDtoCopyWith<$Res> get prosAndCons {
  
  return $ProsAndConsDtoCopyWith<$Res>(_self.prosAndCons, (value) {
    return _then(_self.copyWith(prosAndCons: value));
  });
}/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsDtoCopyWith<$Res> get financials {
  
  return $FinancialsDtoCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of CompanyDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailDtoCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailDtoCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}


/// @nodoc
mixin _$ProsAndConsDto {

 List<String> get pros; List<String> get cons;
/// Create a copy of ProsAndConsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProsAndConsDtoCopyWith<ProsAndConsDto> get copyWith => _$ProsAndConsDtoCopyWithImpl<ProsAndConsDto>(this as ProsAndConsDto, _$identity);

  /// Serializes this ProsAndConsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProsAndConsDto&&const DeepCollectionEquality().equals(other.pros, pros)&&const DeepCollectionEquality().equals(other.cons, cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(pros),const DeepCollectionEquality().hash(cons));

@override
String toString() {
  return 'ProsAndConsDto(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class $ProsAndConsDtoCopyWith<$Res>  {
  factory $ProsAndConsDtoCopyWith(ProsAndConsDto value, $Res Function(ProsAndConsDto) _then) = _$ProsAndConsDtoCopyWithImpl;
@useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class _$ProsAndConsDtoCopyWithImpl<$Res>
    implements $ProsAndConsDtoCopyWith<$Res> {
  _$ProsAndConsDtoCopyWithImpl(this._self, this._then);

  final ProsAndConsDto _self;
  final $Res Function(ProsAndConsDto) _then;

/// Create a copy of ProsAndConsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pros = null,Object? cons = null,}) {
  return _then(_self.copyWith(
pros: null == pros ? _self.pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self.cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProsAndConsDto].
extension ProsAndConsDtoPatterns on ProsAndConsDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProsAndConsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProsAndConsDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProsAndConsDto value)  $default,){
final _that = this;
switch (_that) {
case _ProsAndConsDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProsAndConsDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProsAndConsDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> pros,  List<String> cons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProsAndConsDto() when $default != null:
return $default(_that.pros,_that.cons);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> pros,  List<String> cons)  $default,) {final _that = this;
switch (_that) {
case _ProsAndConsDto():
return $default(_that.pros,_that.cons);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> pros,  List<String> cons)?  $default,) {final _that = this;
switch (_that) {
case _ProsAndConsDto() when $default != null:
return $default(_that.pros,_that.cons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProsAndConsDto implements ProsAndConsDto {
  const _ProsAndConsDto({required final  List<String> pros, required final  List<String> cons}): _pros = pros,_cons = cons;
  factory _ProsAndConsDto.fromJson(Map<String, dynamic> json) => _$ProsAndConsDtoFromJson(json);

 final  List<String> _pros;
@override List<String> get pros {
  if (_pros is EqualUnmodifiableListView) return _pros;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pros);
}

 final  List<String> _cons;
@override List<String> get cons {
  if (_cons is EqualUnmodifiableListView) return _cons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cons);
}


/// Create a copy of ProsAndConsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProsAndConsDtoCopyWith<_ProsAndConsDto> get copyWith => __$ProsAndConsDtoCopyWithImpl<_ProsAndConsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProsAndConsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProsAndConsDto&&const DeepCollectionEquality().equals(other._pros, _pros)&&const DeepCollectionEquality().equals(other._cons, _cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pros),const DeepCollectionEquality().hash(_cons));

@override
String toString() {
  return 'ProsAndConsDto(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class _$ProsAndConsDtoCopyWith<$Res> implements $ProsAndConsDtoCopyWith<$Res> {
  factory _$ProsAndConsDtoCopyWith(_ProsAndConsDto value, $Res Function(_ProsAndConsDto) _then) = __$ProsAndConsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class __$ProsAndConsDtoCopyWithImpl<$Res>
    implements _$ProsAndConsDtoCopyWith<$Res> {
  __$ProsAndConsDtoCopyWithImpl(this._self, this._then);

  final _ProsAndConsDto _self;
  final $Res Function(_ProsAndConsDto) _then;

/// Create a copy of ProsAndConsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pros = null,Object? cons = null,}) {
  return _then(_ProsAndConsDto(
pros: null == pros ? _self._pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self._cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$FinancialsDto {

 List<ChartDataDto> get ebitda; List<ChartDataDto> get revenue;
/// Create a copy of FinancialsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialsDtoCopyWith<FinancialsDto> get copyWith => _$FinancialsDtoCopyWithImpl<FinancialsDto>(this as FinancialsDto, _$identity);

  /// Serializes this FinancialsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialsDto&&const DeepCollectionEquality().equals(other.ebitda, ebitda)&&const DeepCollectionEquality().equals(other.revenue, revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ebitda),const DeepCollectionEquality().hash(revenue));

@override
String toString() {
  return 'FinancialsDto(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $FinancialsDtoCopyWith<$Res>  {
  factory $FinancialsDtoCopyWith(FinancialsDto value, $Res Function(FinancialsDto) _then) = _$FinancialsDtoCopyWithImpl;
@useResult
$Res call({
 List<ChartDataDto> ebitda, List<ChartDataDto> revenue
});




}
/// @nodoc
class _$FinancialsDtoCopyWithImpl<$Res>
    implements $FinancialsDtoCopyWith<$Res> {
  _$FinancialsDtoCopyWithImpl(this._self, this._then);

  final FinancialsDto _self;
  final $Res Function(FinancialsDto) _then;

/// Create a copy of FinancialsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_self.copyWith(
ebitda: null == ebitda ? _self.ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<ChartDataDto>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<ChartDataDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialsDto].
extension FinancialsDtoPatterns on FinancialsDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialsDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialsDto value)  $default,){
final _that = this;
switch (_that) {
case _FinancialsDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialsDto value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialsDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChartDataDto> ebitda,  List<ChartDataDto> revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialsDto() when $default != null:
return $default(_that.ebitda,_that.revenue);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChartDataDto> ebitda,  List<ChartDataDto> revenue)  $default,) {final _that = this;
switch (_that) {
case _FinancialsDto():
return $default(_that.ebitda,_that.revenue);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChartDataDto> ebitda,  List<ChartDataDto> revenue)?  $default,) {final _that = this;
switch (_that) {
case _FinancialsDto() when $default != null:
return $default(_that.ebitda,_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialsDto implements FinancialsDto {
  const _FinancialsDto({required final  List<ChartDataDto> ebitda, required final  List<ChartDataDto> revenue}): _ebitda = ebitda,_revenue = revenue;
  factory _FinancialsDto.fromJson(Map<String, dynamic> json) => _$FinancialsDtoFromJson(json);

 final  List<ChartDataDto> _ebitda;
@override List<ChartDataDto> get ebitda {
  if (_ebitda is EqualUnmodifiableListView) return _ebitda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebitda);
}

 final  List<ChartDataDto> _revenue;
@override List<ChartDataDto> get revenue {
  if (_revenue is EqualUnmodifiableListView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenue);
}


/// Create a copy of FinancialsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialsDtoCopyWith<_FinancialsDto> get copyWith => __$FinancialsDtoCopyWithImpl<_FinancialsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialsDto&&const DeepCollectionEquality().equals(other._ebitda, _ebitda)&&const DeepCollectionEquality().equals(other._revenue, _revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ebitda),const DeepCollectionEquality().hash(_revenue));

@override
String toString() {
  return 'FinancialsDto(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$FinancialsDtoCopyWith<$Res> implements $FinancialsDtoCopyWith<$Res> {
  factory _$FinancialsDtoCopyWith(_FinancialsDto value, $Res Function(_FinancialsDto) _then) = __$FinancialsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ChartDataDto> ebitda, List<ChartDataDto> revenue
});




}
/// @nodoc
class __$FinancialsDtoCopyWithImpl<$Res>
    implements _$FinancialsDtoCopyWith<$Res> {
  __$FinancialsDtoCopyWithImpl(this._self, this._then);

  final _FinancialsDto _self;
  final $Res Function(_FinancialsDto) _then;

/// Create a copy of FinancialsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_FinancialsDto(
ebitda: null == ebitda ? _self._ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<ChartDataDto>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<ChartDataDto>,
  ));
}


}


/// @nodoc
mixin _$ChartDataDto {

 String get month; int get value;
/// Create a copy of ChartDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartDataDtoCopyWith<ChartDataDto> get copyWith => _$ChartDataDtoCopyWithImpl<ChartDataDto>(this as ChartDataDto, _$identity);

  /// Serializes this ChartDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartDataDto&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'ChartDataDto(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class $ChartDataDtoCopyWith<$Res>  {
  factory $ChartDataDtoCopyWith(ChartDataDto value, $Res Function(ChartDataDto) _then) = _$ChartDataDtoCopyWithImpl;
@useResult
$Res call({
 String month, int value
});




}
/// @nodoc
class _$ChartDataDtoCopyWithImpl<$Res>
    implements $ChartDataDtoCopyWith<$Res> {
  _$ChartDataDtoCopyWithImpl(this._self, this._then);

  final ChartDataDto _self;
  final $Res Function(ChartDataDto) _then;

/// Create a copy of ChartDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? value = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartDataDto].
extension ChartDataDtoPatterns on ChartDataDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartDataDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartDataDto value)  $default,){
final _that = this;
switch (_that) {
case _ChartDataDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChartDataDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month,  int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartDataDto() when $default != null:
return $default(_that.month,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month,  int value)  $default,) {final _that = this;
switch (_that) {
case _ChartDataDto():
return $default(_that.month,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month,  int value)?  $default,) {final _that = this;
switch (_that) {
case _ChartDataDto() when $default != null:
return $default(_that.month,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartDataDto implements ChartDataDto {
  const _ChartDataDto({required this.month, required this.value});
  factory _ChartDataDto.fromJson(Map<String, dynamic> json) => _$ChartDataDtoFromJson(json);

@override final  String month;
@override final  int value;

/// Create a copy of ChartDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartDataDtoCopyWith<_ChartDataDto> get copyWith => __$ChartDataDtoCopyWithImpl<_ChartDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartDataDto&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'ChartDataDto(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ChartDataDtoCopyWith<$Res> implements $ChartDataDtoCopyWith<$Res> {
  factory _$ChartDataDtoCopyWith(_ChartDataDto value, $Res Function(_ChartDataDto) _then) = __$ChartDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String month, int value
});




}
/// @nodoc
class __$ChartDataDtoCopyWithImpl<$Res>
    implements _$ChartDataDtoCopyWith<$Res> {
  __$ChartDataDtoCopyWithImpl(this._self, this._then);

  final _ChartDataDto _self;
  final $Res Function(_ChartDataDto) _then;

/// Create a copy of ChartDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? value = null,}) {
  return _then(_ChartDataDto(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$IssuerDetailDto {

@JsonKey(name: 'issuer_name') String get issuerName;@JsonKey(name: 'type_of_issuer') String get typeOfIssuer; String get sector; String get industry;@JsonKey(name: 'issuer_nature') String get issuerNature; String get cin;@JsonKey(name: 'lead_manager') String get leadManager; String get registrar;@JsonKey(name: 'debenture_trustee') String get debentureTrustee;
/// Create a copy of IssuerDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssuerDetailDtoCopyWith<IssuerDetailDto> get copyWith => _$IssuerDetailDtoCopyWithImpl<IssuerDetailDto>(this as IssuerDetailDto, _$identity);

  /// Serializes this IssuerDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssuerDetailDto&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetailDto(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class $IssuerDetailDtoCopyWith<$Res>  {
  factory $IssuerDetailDtoCopyWith(IssuerDetailDto value, $Res Function(IssuerDetailDto) _then) = _$IssuerDetailDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'issuer_name') String issuerName,@JsonKey(name: 'type_of_issuer') String typeOfIssuer, String sector, String industry,@JsonKey(name: 'issuer_nature') String issuerNature, String cin,@JsonKey(name: 'lead_manager') String leadManager, String registrar,@JsonKey(name: 'debenture_trustee') String debentureTrustee
});




}
/// @nodoc
class _$IssuerDetailDtoCopyWithImpl<$Res>
    implements $IssuerDetailDtoCopyWith<$Res> {
  _$IssuerDetailDtoCopyWithImpl(this._self, this._then);

  final IssuerDetailDto _self;
  final $Res Function(IssuerDetailDto) _then;

/// Create a copy of IssuerDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issuerName = null,Object? typeOfIssuer = null,Object? sector = null,Object? industry = null,Object? issuerNature = null,Object? cin = null,Object? leadManager = null,Object? registrar = null,Object? debentureTrustee = null,}) {
  return _then(_self.copyWith(
issuerName: null == issuerName ? _self.issuerName : issuerName // ignore: cast_nullable_to_non_nullable
as String,typeOfIssuer: null == typeOfIssuer ? _self.typeOfIssuer : typeOfIssuer // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,issuerNature: null == issuerNature ? _self.issuerNature : issuerNature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,leadManager: null == leadManager ? _self.leadManager : leadManager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,debentureTrustee: null == debentureTrustee ? _self.debentureTrustee : debentureTrustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IssuerDetailDto].
extension IssuerDetailDtoPatterns on IssuerDetailDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IssuerDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IssuerDetailDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IssuerDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _IssuerDetailDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IssuerDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _IssuerDetailDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'issuer_name')  String issuerName, @JsonKey(name: 'type_of_issuer')  String typeOfIssuer,  String sector,  String industry, @JsonKey(name: 'issuer_nature')  String issuerNature,  String cin, @JsonKey(name: 'lead_manager')  String leadManager,  String registrar, @JsonKey(name: 'debenture_trustee')  String debentureTrustee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IssuerDetailDto() when $default != null:
return $default(_that.issuerName,_that.typeOfIssuer,_that.sector,_that.industry,_that.issuerNature,_that.cin,_that.leadManager,_that.registrar,_that.debentureTrustee);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'issuer_name')  String issuerName, @JsonKey(name: 'type_of_issuer')  String typeOfIssuer,  String sector,  String industry, @JsonKey(name: 'issuer_nature')  String issuerNature,  String cin, @JsonKey(name: 'lead_manager')  String leadManager,  String registrar, @JsonKey(name: 'debenture_trustee')  String debentureTrustee)  $default,) {final _that = this;
switch (_that) {
case _IssuerDetailDto():
return $default(_that.issuerName,_that.typeOfIssuer,_that.sector,_that.industry,_that.issuerNature,_that.cin,_that.leadManager,_that.registrar,_that.debentureTrustee);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'issuer_name')  String issuerName, @JsonKey(name: 'type_of_issuer')  String typeOfIssuer,  String sector,  String industry, @JsonKey(name: 'issuer_nature')  String issuerNature,  String cin, @JsonKey(name: 'lead_manager')  String leadManager,  String registrar, @JsonKey(name: 'debenture_trustee')  String debentureTrustee)?  $default,) {final _that = this;
switch (_that) {
case _IssuerDetailDto() when $default != null:
return $default(_that.issuerName,_that.typeOfIssuer,_that.sector,_that.industry,_that.issuerNature,_that.cin,_that.leadManager,_that.registrar,_that.debentureTrustee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IssuerDetailDto implements IssuerDetailDto {
  const _IssuerDetailDto({@JsonKey(name: 'issuer_name') required this.issuerName, @JsonKey(name: 'type_of_issuer') required this.typeOfIssuer, required this.sector, required this.industry, @JsonKey(name: 'issuer_nature') required this.issuerNature, required this.cin, @JsonKey(name: 'lead_manager') required this.leadManager, required this.registrar, @JsonKey(name: 'debenture_trustee') required this.debentureTrustee});
  factory _IssuerDetailDto.fromJson(Map<String, dynamic> json) => _$IssuerDetailDtoFromJson(json);

@override@JsonKey(name: 'issuer_name') final  String issuerName;
@override@JsonKey(name: 'type_of_issuer') final  String typeOfIssuer;
@override final  String sector;
@override final  String industry;
@override@JsonKey(name: 'issuer_nature') final  String issuerNature;
@override final  String cin;
@override@JsonKey(name: 'lead_manager') final  String leadManager;
@override final  String registrar;
@override@JsonKey(name: 'debenture_trustee') final  String debentureTrustee;

/// Create a copy of IssuerDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssuerDetailDtoCopyWith<_IssuerDetailDto> get copyWith => __$IssuerDetailDtoCopyWithImpl<_IssuerDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IssuerDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssuerDetailDto&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetailDto(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class _$IssuerDetailDtoCopyWith<$Res> implements $IssuerDetailDtoCopyWith<$Res> {
  factory _$IssuerDetailDtoCopyWith(_IssuerDetailDto value, $Res Function(_IssuerDetailDto) _then) = __$IssuerDetailDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'issuer_name') String issuerName,@JsonKey(name: 'type_of_issuer') String typeOfIssuer, String sector, String industry,@JsonKey(name: 'issuer_nature') String issuerNature, String cin,@JsonKey(name: 'lead_manager') String leadManager, String registrar,@JsonKey(name: 'debenture_trustee') String debentureTrustee
});




}
/// @nodoc
class __$IssuerDetailDtoCopyWithImpl<$Res>
    implements _$IssuerDetailDtoCopyWith<$Res> {
  __$IssuerDetailDtoCopyWithImpl(this._self, this._then);

  final _IssuerDetailDto _self;
  final $Res Function(_IssuerDetailDto) _then;

/// Create a copy of IssuerDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issuerName = null,Object? typeOfIssuer = null,Object? sector = null,Object? industry = null,Object? issuerNature = null,Object? cin = null,Object? leadManager = null,Object? registrar = null,Object? debentureTrustee = null,}) {
  return _then(_IssuerDetailDto(
issuerName: null == issuerName ? _self.issuerName : issuerName // ignore: cast_nullable_to_non_nullable
as String,typeOfIssuer: null == typeOfIssuer ? _self.typeOfIssuer : typeOfIssuer // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,issuerNature: null == issuerNature ? _self.issuerNature : issuerNature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,leadManager: null == leadManager ? _self.leadManager : leadManager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,debentureTrustee: null == debentureTrustee ? _self.debentureTrustee : debentureTrustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
