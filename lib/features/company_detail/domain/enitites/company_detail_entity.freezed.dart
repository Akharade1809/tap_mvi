// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompanyDetailEntity {

 String get logo; String get companyName; String get description; String get isin; String get status; List<String> get pros; List<String> get cons; List<ChartData> get ebitda; List<ChartData> get revenue; IssuerDetail get issuerDetails;
/// Create a copy of CompanyDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyDetailEntityCopyWith<CompanyDetailEntity> get copyWith => _$CompanyDetailEntityCopyWithImpl<CompanyDetailEntity>(this as CompanyDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyDetailEntity&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.pros, pros)&&const DeepCollectionEquality().equals(other.cons, cons)&&const DeepCollectionEquality().equals(other.ebitda, ebitda)&&const DeepCollectionEquality().equals(other.revenue, revenue)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}


@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,const DeepCollectionEquality().hash(pros),const DeepCollectionEquality().hash(cons),const DeepCollectionEquality().hash(ebitda),const DeepCollectionEquality().hash(revenue),issuerDetails);

@override
String toString() {
  return 'CompanyDetailEntity(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, pros: $pros, cons: $cons, ebitda: $ebitda, revenue: $revenue, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class $CompanyDetailEntityCopyWith<$Res>  {
  factory $CompanyDetailEntityCopyWith(CompanyDetailEntity value, $Res Function(CompanyDetailEntity) _then) = _$CompanyDetailEntityCopyWithImpl;
@useResult
$Res call({
 String logo, String companyName, String description, String isin, String status, List<String> pros, List<String> cons, List<ChartData> ebitda, List<ChartData> revenue, IssuerDetail issuerDetails
});


$IssuerDetailCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class _$CompanyDetailEntityCopyWithImpl<$Res>
    implements $CompanyDetailEntityCopyWith<$Res> {
  _$CompanyDetailEntityCopyWithImpl(this._self, this._then);

  final CompanyDetailEntity _self;
  final $Res Function(CompanyDetailEntity) _then;

/// Create a copy of CompanyDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? pros = null,Object? cons = null,Object? ebitda = null,Object? revenue = null,Object? issuerDetails = null,}) {
  return _then(_self.copyWith(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pros: null == pros ? _self.pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self.cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,ebitda: null == ebitda ? _self.ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<ChartData>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<ChartData>,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetail,
  ));
}
/// Create a copy of CompanyDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyDetailEntity].
extension CompanyDetailEntityPatterns on CompanyDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String logo,  String companyName,  String description,  String isin,  String status,  List<String> pros,  List<String> cons,  List<ChartData> ebitda,  List<ChartData> revenue,  IssuerDetail issuerDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyDetailEntity() when $default != null:
return $default(_that.logo,_that.companyName,_that.description,_that.isin,_that.status,_that.pros,_that.cons,_that.ebitda,_that.revenue,_that.issuerDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String logo,  String companyName,  String description,  String isin,  String status,  List<String> pros,  List<String> cons,  List<ChartData> ebitda,  List<ChartData> revenue,  IssuerDetail issuerDetails)  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailEntity():
return $default(_that.logo,_that.companyName,_that.description,_that.isin,_that.status,_that.pros,_that.cons,_that.ebitda,_that.revenue,_that.issuerDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String logo,  String companyName,  String description,  String isin,  String status,  List<String> pros,  List<String> cons,  List<ChartData> ebitda,  List<ChartData> revenue,  IssuerDetail issuerDetails)?  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailEntity() when $default != null:
return $default(_that.logo,_that.companyName,_that.description,_that.isin,_that.status,_that.pros,_that.cons,_that.ebitda,_that.revenue,_that.issuerDetails);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyDetailEntity implements CompanyDetailEntity {
  const _CompanyDetailEntity({required this.logo, required this.companyName, required this.description, required this.isin, required this.status, required final  List<String> pros, required final  List<String> cons, required final  List<ChartData> ebitda, required final  List<ChartData> revenue, required this.issuerDetails}): _pros = pros,_cons = cons,_ebitda = ebitda,_revenue = revenue;
  

@override final  String logo;
@override final  String companyName;
@override final  String description;
@override final  String isin;
@override final  String status;
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

 final  List<ChartData> _ebitda;
@override List<ChartData> get ebitda {
  if (_ebitda is EqualUnmodifiableListView) return _ebitda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebitda);
}

 final  List<ChartData> _revenue;
@override List<ChartData> get revenue {
  if (_revenue is EqualUnmodifiableListView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenue);
}

@override final  IssuerDetail issuerDetails;

/// Create a copy of CompanyDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyDetailEntityCopyWith<_CompanyDetailEntity> get copyWith => __$CompanyDetailEntityCopyWithImpl<_CompanyDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyDetailEntity&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._pros, _pros)&&const DeepCollectionEquality().equals(other._cons, _cons)&&const DeepCollectionEquality().equals(other._ebitda, _ebitda)&&const DeepCollectionEquality().equals(other._revenue, _revenue)&&(identical(other.issuerDetails, issuerDetails) || other.issuerDetails == issuerDetails));
}


@override
int get hashCode => Object.hash(runtimeType,logo,companyName,description,isin,status,const DeepCollectionEquality().hash(_pros),const DeepCollectionEquality().hash(_cons),const DeepCollectionEquality().hash(_ebitda),const DeepCollectionEquality().hash(_revenue),issuerDetails);

@override
String toString() {
  return 'CompanyDetailEntity(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, pros: $pros, cons: $cons, ebitda: $ebitda, revenue: $revenue, issuerDetails: $issuerDetails)';
}


}

/// @nodoc
abstract mixin class _$CompanyDetailEntityCopyWith<$Res> implements $CompanyDetailEntityCopyWith<$Res> {
  factory _$CompanyDetailEntityCopyWith(_CompanyDetailEntity value, $Res Function(_CompanyDetailEntity) _then) = __$CompanyDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 String logo, String companyName, String description, String isin, String status, List<String> pros, List<String> cons, List<ChartData> ebitda, List<ChartData> revenue, IssuerDetail issuerDetails
});


@override $IssuerDetailCopyWith<$Res> get issuerDetails;

}
/// @nodoc
class __$CompanyDetailEntityCopyWithImpl<$Res>
    implements _$CompanyDetailEntityCopyWith<$Res> {
  __$CompanyDetailEntityCopyWithImpl(this._self, this._then);

  final _CompanyDetailEntity _self;
  final $Res Function(_CompanyDetailEntity) _then;

/// Create a copy of CompanyDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = null,Object? companyName = null,Object? description = null,Object? isin = null,Object? status = null,Object? pros = null,Object? cons = null,Object? ebitda = null,Object? revenue = null,Object? issuerDetails = null,}) {
  return _then(_CompanyDetailEntity(
logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pros: null == pros ? _self._pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self._cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,ebitda: null == ebitda ? _self._ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<ChartData>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<ChartData>,issuerDetails: null == issuerDetails ? _self.issuerDetails : issuerDetails // ignore: cast_nullable_to_non_nullable
as IssuerDetail,
  ));
}

/// Create a copy of CompanyDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailCopyWith<$Res> get issuerDetails {
  
  return $IssuerDetailCopyWith<$Res>(_self.issuerDetails, (value) {
    return _then(_self.copyWith(issuerDetails: value));
  });
}
}

/// @nodoc
mixin _$ChartData {

 String get month; int get value;
/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartDataCopyWith<ChartData> get copyWith => _$ChartDataCopyWithImpl<ChartData>(this as ChartData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartData&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'ChartData(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class $ChartDataCopyWith<$Res>  {
  factory $ChartDataCopyWith(ChartData value, $Res Function(ChartData) _then) = _$ChartDataCopyWithImpl;
@useResult
$Res call({
 String month, int value
});




}
/// @nodoc
class _$ChartDataCopyWithImpl<$Res>
    implements $ChartDataCopyWith<$Res> {
  _$ChartDataCopyWithImpl(this._self, this._then);

  final ChartData _self;
  final $Res Function(ChartData) _then;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? value = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartData].
extension ChartDataPatterns on ChartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartData value)  $default,){
final _that = this;
switch (_that) {
case _ChartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartData value)?  $default,){
final _that = this;
switch (_that) {
case _ChartData() when $default != null:
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
case _ChartData() when $default != null:
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
case _ChartData():
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
case _ChartData() when $default != null:
return $default(_that.month,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _ChartData implements ChartData {
  const _ChartData({required this.month, required this.value});
  

@override final  String month;
@override final  int value;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartDataCopyWith<_ChartData> get copyWith => __$ChartDataCopyWithImpl<_ChartData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartData&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'ChartData(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ChartDataCopyWith<$Res> implements $ChartDataCopyWith<$Res> {
  factory _$ChartDataCopyWith(_ChartData value, $Res Function(_ChartData) _then) = __$ChartDataCopyWithImpl;
@override @useResult
$Res call({
 String month, int value
});




}
/// @nodoc
class __$ChartDataCopyWithImpl<$Res>
    implements _$ChartDataCopyWith<$Res> {
  __$ChartDataCopyWithImpl(this._self, this._then);

  final _ChartData _self;
  final $Res Function(_ChartData) _then;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? value = null,}) {
  return _then(_ChartData(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$IssuerDetail {

 String get issuerName; String get typeOfIssuer; String get sector; String get industry; String get issuerNature; String get cin; String get leadManager; String get registrar; String get debentureTrustee;
/// Create a copy of IssuerDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssuerDetailCopyWith<IssuerDetail> get copyWith => _$IssuerDetailCopyWithImpl<IssuerDetail>(this as IssuerDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssuerDetail&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}


@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetail(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class $IssuerDetailCopyWith<$Res>  {
  factory $IssuerDetailCopyWith(IssuerDetail value, $Res Function(IssuerDetail) _then) = _$IssuerDetailCopyWithImpl;
@useResult
$Res call({
 String issuerName, String typeOfIssuer, String sector, String industry, String issuerNature, String cin, String leadManager, String registrar, String debentureTrustee
});




}
/// @nodoc
class _$IssuerDetailCopyWithImpl<$Res>
    implements $IssuerDetailCopyWith<$Res> {
  _$IssuerDetailCopyWithImpl(this._self, this._then);

  final IssuerDetail _self;
  final $Res Function(IssuerDetail) _then;

/// Create a copy of IssuerDetail
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


/// Adds pattern-matching-related methods to [IssuerDetail].
extension IssuerDetailPatterns on IssuerDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IssuerDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IssuerDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IssuerDetail value)  $default,){
final _that = this;
switch (_that) {
case _IssuerDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IssuerDetail value)?  $default,){
final _that = this;
switch (_that) {
case _IssuerDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String issuerName,  String typeOfIssuer,  String sector,  String industry,  String issuerNature,  String cin,  String leadManager,  String registrar,  String debentureTrustee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IssuerDetail() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String issuerName,  String typeOfIssuer,  String sector,  String industry,  String issuerNature,  String cin,  String leadManager,  String registrar,  String debentureTrustee)  $default,) {final _that = this;
switch (_that) {
case _IssuerDetail():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String issuerName,  String typeOfIssuer,  String sector,  String industry,  String issuerNature,  String cin,  String leadManager,  String registrar,  String debentureTrustee)?  $default,) {final _that = this;
switch (_that) {
case _IssuerDetail() when $default != null:
return $default(_that.issuerName,_that.typeOfIssuer,_that.sector,_that.industry,_that.issuerNature,_that.cin,_that.leadManager,_that.registrar,_that.debentureTrustee);case _:
  return null;

}
}

}

/// @nodoc


class _IssuerDetail implements IssuerDetail {
  const _IssuerDetail({required this.issuerName, required this.typeOfIssuer, required this.sector, required this.industry, required this.issuerNature, required this.cin, required this.leadManager, required this.registrar, required this.debentureTrustee});
  

@override final  String issuerName;
@override final  String typeOfIssuer;
@override final  String sector;
@override final  String industry;
@override final  String issuerNature;
@override final  String cin;
@override final  String leadManager;
@override final  String registrar;
@override final  String debentureTrustee;

/// Create a copy of IssuerDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssuerDetailCopyWith<_IssuerDetail> get copyWith => __$IssuerDetailCopyWithImpl<_IssuerDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssuerDetail&&(identical(other.issuerName, issuerName) || other.issuerName == issuerName)&&(identical(other.typeOfIssuer, typeOfIssuer) || other.typeOfIssuer == typeOfIssuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuerNature, issuerNature) || other.issuerNature == issuerNature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.leadManager, leadManager) || other.leadManager == leadManager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debentureTrustee, debentureTrustee) || other.debentureTrustee == debentureTrustee));
}


@override
int get hashCode => Object.hash(runtimeType,issuerName,typeOfIssuer,sector,industry,issuerNature,cin,leadManager,registrar,debentureTrustee);

@override
String toString() {
  return 'IssuerDetail(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
}


}

/// @nodoc
abstract mixin class _$IssuerDetailCopyWith<$Res> implements $IssuerDetailCopyWith<$Res> {
  factory _$IssuerDetailCopyWith(_IssuerDetail value, $Res Function(_IssuerDetail) _then) = __$IssuerDetailCopyWithImpl;
@override @useResult
$Res call({
 String issuerName, String typeOfIssuer, String sector, String industry, String issuerNature, String cin, String leadManager, String registrar, String debentureTrustee
});




}
/// @nodoc
class __$IssuerDetailCopyWithImpl<$Res>
    implements _$IssuerDetailCopyWith<$Res> {
  __$IssuerDetailCopyWithImpl(this._self, this._then);

  final _IssuerDetail _self;
  final $Res Function(_IssuerDetail) _then;

/// Create a copy of IssuerDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issuerName = null,Object? typeOfIssuer = null,Object? sector = null,Object? industry = null,Object? issuerNature = null,Object? cin = null,Object? leadManager = null,Object? registrar = null,Object? debentureTrustee = null,}) {
  return _then(_IssuerDetail(
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
