// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: Keys.id, defaultValue: 0) int get id;@JsonKey(name: Keys.firstName, defaultValue: '') String get firstName;@JsonKey(name: Keys.middleName, defaultValue: '') String get middleName;@JsonKey(name: Keys.lastName, defaultValue: '') String get lastName;@JsonKey(name: Keys.gender, defaultValue: '') String get gender;@JsonKey(name: Keys.birthday, defaultValue: '') String get birthday;@JsonKey(name: Keys.subscriptionId, defaultValue: 0) int get subscriptionId;@JsonKey(name: Keys.userReferralId, defaultValue: 0) int get userReferralId;@JsonKey(name: Keys.branchId, defaultValue: '') String get branchId;@JsonKey(name: Keys.batchId, defaultValue: 0) int get batchId;@JsonKey(name: Keys.roleId, defaultValue: 0) int get roleId;@JsonKey(name: Keys.schoolId, defaultValue: 0) int get schoolId;@JsonKey(name: Keys.schoolOthers, defaultValue: '') String get schoolOthers;@JsonKey(name: Keys.degree, defaultValue: '') String get degree;@JsonKey(name: Keys.nationalityId, defaultValue: 0) int get nationalityId;@JsonKey(name: Keys.nationalityOthers, defaultValue: '') String get nationalityOthers;@JsonKey(name: Keys.cityId, defaultValue: 0) int get cityId;@JsonKey(name: Keys.provinceId, defaultValue: 0) int get provinceId;@JsonKey(name: Keys.profilePicture, defaultValue: '') String get profilePicture;@JsonKey(name: Keys.contactNoPrefix, defaultValue: '') String get contactNoPrefix;@JsonKey(name: Keys.contactNo, defaultValue: '') String get contactNo;@JsonKey(name: Keys.email, defaultValue: '') String get email;@JsonKey(name: Keys.googleId, defaultValue: '') String get googleId;@JsonKey(name: Keys.microsoftId, defaultValue: '') String get microsoftId;@JsonKey(name: Keys.emailVerifiedAt, defaultValue: '') String get emailVerifiedAt;@JsonKey(name: Keys.isActive, defaultValue: 0) int get isActive;@JsonKey(name: Keys.isUpgraded, defaultValue: 0) int get isUpgraded;@JsonKey(name: Keys.isTrial, defaultValue: 0) int get isTrial;@JsonKey(name: Keys.registrationSource, defaultValue: '') String get registrationSource;@JsonKey(name: Keys.approvedBy, defaultValue: 0) int get approvedBy;@JsonKey(name: Keys.approvedAt, defaultValue: '') String get approvedAt;@JsonKey(name: Keys.lastLogin, defaultValue: '') String get lastLogin;@JsonKey(name: Keys.takenDiagnostics, defaultValue: 0) int get takenDiagnostics;@JsonKey(name: Keys.features) FeaturesModel get features;@JsonKey(name: Keys.createdBy, defaultValue: 0) int get createdBy;@JsonKey(name: Keys.updatedBy, defaultValue: 0) int get updatedBy;@JsonKey(name: Keys.createdAt, defaultValue: '') String get createdAt;@JsonKey(name: Keys.updatedAt, defaultValue: '') String get updatedAt;@JsonKey(name: Keys.archivedAt, defaultValue: '') String get archivedAt;@JsonKey(name: Keys.isAdmin, defaultValue: false) bool get isAdmin;@JsonKey(name: Keys.isBranchAdmin, defaultValue: false) bool get isBranchAdmin;@JsonKey(name: Keys.isBranchTeacher, defaultValue: false) bool get isBranchTeacher;@JsonKey(name: Keys.isTeacher, defaultValue: false) bool get isTeacher;@JsonKey(name: Keys.isStudent, defaultValue: false) bool get isStudent;@JsonKey(name: Keys.fullName, defaultValue: '') String get fullName;@JsonKey(name: Keys.hasDefaultPassword, defaultValue: false) bool get hasDefaultPassword;@JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false) bool get isBatchAccessAllowed;@JsonKey(name: Keys.batchTags, defaultValue: []) List<dynamic> get batchTags;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.userReferralId, userReferralId) || other.userReferralId == userReferralId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolOthers, schoolOthers) || other.schoolOthers == schoolOthers)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.nationalityId, nationalityId) || other.nationalityId == nationalityId)&&(identical(other.nationalityOthers, nationalityOthers) || other.nationalityOthers == nationalityOthers)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.contactNoPrefix, contactNoPrefix) || other.contactNoPrefix == contactNoPrefix)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.googleId, googleId) || other.googleId == googleId)&&(identical(other.microsoftId, microsoftId) || other.microsoftId == microsoftId)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isUpgraded, isUpgraded) || other.isUpgraded == isUpgraded)&&(identical(other.isTrial, isTrial) || other.isTrial == isTrial)&&(identical(other.registrationSource, registrationSource) || other.registrationSource == registrationSource)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.takenDiagnostics, takenDiagnostics) || other.takenDiagnostics == takenDiagnostics)&&(identical(other.features, features) || other.features == features)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.archivedAt, archivedAt) || other.archivedAt == archivedAt)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.isBranchAdmin, isBranchAdmin) || other.isBranchAdmin == isBranchAdmin)&&(identical(other.isBranchTeacher, isBranchTeacher) || other.isBranchTeacher == isBranchTeacher)&&(identical(other.isTeacher, isTeacher) || other.isTeacher == isTeacher)&&(identical(other.isStudent, isStudent) || other.isStudent == isStudent)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.hasDefaultPassword, hasDefaultPassword) || other.hasDefaultPassword == hasDefaultPassword)&&(identical(other.isBatchAccessAllowed, isBatchAccessAllowed) || other.isBatchAccessAllowed == isBatchAccessAllowed)&&const DeepCollectionEquality().equals(other.batchTags, batchTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,middleName,lastName,gender,birthday,subscriptionId,userReferralId,branchId,batchId,roleId,schoolId,schoolOthers,degree,nationalityId,nationalityOthers,cityId,provinceId,profilePicture,contactNoPrefix,contactNo,email,googleId,microsoftId,emailVerifiedAt,isActive,isUpgraded,isTrial,registrationSource,approvedBy,approvedAt,lastLogin,takenDiagnostics,features,createdBy,updatedBy,createdAt,updatedAt,archivedAt,isAdmin,isBranchAdmin,isBranchTeacher,isTeacher,isStudent,fullName,hasDefaultPassword,isBatchAccessAllowed,const DeepCollectionEquality().hash(batchTags)]);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, birthday: $birthday, subscriptionId: $subscriptionId, userReferralId: $userReferralId, branchId: $branchId, batchId: $batchId, roleId: $roleId, schoolId: $schoolId, schoolOthers: $schoolOthers, degree: $degree, nationalityId: $nationalityId, nationalityOthers: $nationalityOthers, cityId: $cityId, provinceId: $provinceId, profilePicture: $profilePicture, contactNoPrefix: $contactNoPrefix, contactNo: $contactNo, email: $email, googleId: $googleId, microsoftId: $microsoftId, emailVerifiedAt: $emailVerifiedAt, isActive: $isActive, isUpgraded: $isUpgraded, isTrial: $isTrial, registrationSource: $registrationSource, approvedBy: $approvedBy, approvedAt: $approvedAt, lastLogin: $lastLogin, takenDiagnostics: $takenDiagnostics, features: $features, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt, archivedAt: $archivedAt, isAdmin: $isAdmin, isBranchAdmin: $isBranchAdmin, isBranchTeacher: $isBranchTeacher, isTeacher: $isTeacher, isStudent: $isStudent, fullName: $fullName, hasDefaultPassword: $hasDefaultPassword, isBatchAccessAllowed: $isBatchAccessAllowed, batchTags: $batchTags)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: Keys.id, defaultValue: 0) int id,@JsonKey(name: Keys.firstName, defaultValue: '') String firstName,@JsonKey(name: Keys.middleName, defaultValue: '') String middleName,@JsonKey(name: Keys.lastName, defaultValue: '') String lastName,@JsonKey(name: Keys.gender, defaultValue: '') String gender,@JsonKey(name: Keys.birthday, defaultValue: '') String birthday,@JsonKey(name: Keys.subscriptionId, defaultValue: 0) int subscriptionId,@JsonKey(name: Keys.userReferralId, defaultValue: 0) int userReferralId,@JsonKey(name: Keys.branchId, defaultValue: '') String branchId,@JsonKey(name: Keys.batchId, defaultValue: 0) int batchId,@JsonKey(name: Keys.roleId, defaultValue: 0) int roleId,@JsonKey(name: Keys.schoolId, defaultValue: 0) int schoolId,@JsonKey(name: Keys.schoolOthers, defaultValue: '') String schoolOthers,@JsonKey(name: Keys.degree, defaultValue: '') String degree,@JsonKey(name: Keys.nationalityId, defaultValue: 0) int nationalityId,@JsonKey(name: Keys.nationalityOthers, defaultValue: '') String nationalityOthers,@JsonKey(name: Keys.cityId, defaultValue: 0) int cityId,@JsonKey(name: Keys.provinceId, defaultValue: 0) int provinceId,@JsonKey(name: Keys.profilePicture, defaultValue: '') String profilePicture,@JsonKey(name: Keys.contactNoPrefix, defaultValue: '') String contactNoPrefix,@JsonKey(name: Keys.contactNo, defaultValue: '') String contactNo,@JsonKey(name: Keys.email, defaultValue: '') String email,@JsonKey(name: Keys.googleId, defaultValue: '') String googleId,@JsonKey(name: Keys.microsoftId, defaultValue: '') String microsoftId,@JsonKey(name: Keys.emailVerifiedAt, defaultValue: '') String emailVerifiedAt,@JsonKey(name: Keys.isActive, defaultValue: 0) int isActive,@JsonKey(name: Keys.isUpgraded, defaultValue: 0) int isUpgraded,@JsonKey(name: Keys.isTrial, defaultValue: 0) int isTrial,@JsonKey(name: Keys.registrationSource, defaultValue: '') String registrationSource,@JsonKey(name: Keys.approvedBy, defaultValue: 0) int approvedBy,@JsonKey(name: Keys.approvedAt, defaultValue: '') String approvedAt,@JsonKey(name: Keys.lastLogin, defaultValue: '') String lastLogin,@JsonKey(name: Keys.takenDiagnostics, defaultValue: 0) int takenDiagnostics,@JsonKey(name: Keys.features) FeaturesModel features,@JsonKey(name: Keys.createdBy, defaultValue: 0) int createdBy,@JsonKey(name: Keys.updatedBy, defaultValue: 0) int updatedBy,@JsonKey(name: Keys.createdAt, defaultValue: '') String createdAt,@JsonKey(name: Keys.updatedAt, defaultValue: '') String updatedAt,@JsonKey(name: Keys.archivedAt, defaultValue: '') String archivedAt,@JsonKey(name: Keys.isAdmin, defaultValue: false) bool isAdmin,@JsonKey(name: Keys.isBranchAdmin, defaultValue: false) bool isBranchAdmin,@JsonKey(name: Keys.isBranchTeacher, defaultValue: false) bool isBranchTeacher,@JsonKey(name: Keys.isTeacher, defaultValue: false) bool isTeacher,@JsonKey(name: Keys.isStudent, defaultValue: false) bool isStudent,@JsonKey(name: Keys.fullName, defaultValue: '') String fullName,@JsonKey(name: Keys.hasDefaultPassword, defaultValue: false) bool hasDefaultPassword,@JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false) bool isBatchAccessAllowed,@JsonKey(name: Keys.batchTags, defaultValue: []) List<dynamic> batchTags
});


$FeaturesModelCopyWith<$Res> get features;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? middleName = null,Object? lastName = null,Object? gender = null,Object? birthday = null,Object? subscriptionId = null,Object? userReferralId = null,Object? branchId = null,Object? batchId = null,Object? roleId = null,Object? schoolId = null,Object? schoolOthers = null,Object? degree = null,Object? nationalityId = null,Object? nationalityOthers = null,Object? cityId = null,Object? provinceId = null,Object? profilePicture = null,Object? contactNoPrefix = null,Object? contactNo = null,Object? email = null,Object? googleId = null,Object? microsoftId = null,Object? emailVerifiedAt = null,Object? isActive = null,Object? isUpgraded = null,Object? isTrial = null,Object? registrationSource = null,Object? approvedBy = null,Object? approvedAt = null,Object? lastLogin = null,Object? takenDiagnostics = null,Object? features = null,Object? createdBy = null,Object? updatedBy = null,Object? createdAt = null,Object? updatedAt = null,Object? archivedAt = null,Object? isAdmin = null,Object? isBranchAdmin = null,Object? isBranchTeacher = null,Object? isTeacher = null,Object? isStudent = null,Object? fullName = null,Object? hasDefaultPassword = null,Object? isBatchAccessAllowed = null,Object? batchTags = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,middleName: null == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,birthday: null == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String,subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as int,userReferralId: null == userReferralId ? _self.userReferralId : userReferralId // ignore: cast_nullable_to_non_nullable
as int,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as int,roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,schoolOthers: null == schoolOthers ? _self.schoolOthers : schoolOthers // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,nationalityId: null == nationalityId ? _self.nationalityId : nationalityId // ignore: cast_nullable_to_non_nullable
as int,nationalityOthers: null == nationalityOthers ? _self.nationalityOthers : nationalityOthers // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,provinceId: null == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as int,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String,contactNoPrefix: null == contactNoPrefix ? _self.contactNoPrefix : contactNoPrefix // ignore: cast_nullable_to_non_nullable
as String,contactNo: null == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,googleId: null == googleId ? _self.googleId : googleId // ignore: cast_nullable_to_non_nullable
as String,microsoftId: null == microsoftId ? _self.microsoftId : microsoftId // ignore: cast_nullable_to_non_nullable
as String,emailVerifiedAt: null == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,isUpgraded: null == isUpgraded ? _self.isUpgraded : isUpgraded // ignore: cast_nullable_to_non_nullable
as int,isTrial: null == isTrial ? _self.isTrial : isTrial // ignore: cast_nullable_to_non_nullable
as int,registrationSource: null == registrationSource ? _self.registrationSource : registrationSource // ignore: cast_nullable_to_non_nullable
as String,approvedBy: null == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as int,approvedAt: null == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String,takenDiagnostics: null == takenDiagnostics ? _self.takenDiagnostics : takenDiagnostics // ignore: cast_nullable_to_non_nullable
as int,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as FeaturesModel,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int,updatedBy: null == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,archivedAt: null == archivedAt ? _self.archivedAt : archivedAt // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,isBranchAdmin: null == isBranchAdmin ? _self.isBranchAdmin : isBranchAdmin // ignore: cast_nullable_to_non_nullable
as bool,isBranchTeacher: null == isBranchTeacher ? _self.isBranchTeacher : isBranchTeacher // ignore: cast_nullable_to_non_nullable
as bool,isTeacher: null == isTeacher ? _self.isTeacher : isTeacher // ignore: cast_nullable_to_non_nullable
as bool,isStudent: null == isStudent ? _self.isStudent : isStudent // ignore: cast_nullable_to_non_nullable
as bool,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,hasDefaultPassword: null == hasDefaultPassword ? _self.hasDefaultPassword : hasDefaultPassword // ignore: cast_nullable_to_non_nullable
as bool,isBatchAccessAllowed: null == isBatchAccessAllowed ? _self.isBatchAccessAllowed : isBatchAccessAllowed // ignore: cast_nullable_to_non_nullable
as bool,batchTags: null == batchTags ? _self.batchTags : batchTags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeaturesModelCopyWith<$Res> get features {
  
  return $FeaturesModelCopyWith<$Res>(_self.features, (value) {
    return _then(_self.copyWith(features: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: Keys.id, defaultValue: 0)  int id, @JsonKey(name: Keys.firstName, defaultValue: '')  String firstName, @JsonKey(name: Keys.middleName, defaultValue: '')  String middleName, @JsonKey(name: Keys.lastName, defaultValue: '')  String lastName, @JsonKey(name: Keys.gender, defaultValue: '')  String gender, @JsonKey(name: Keys.birthday, defaultValue: '')  String birthday, @JsonKey(name: Keys.subscriptionId, defaultValue: 0)  int subscriptionId, @JsonKey(name: Keys.userReferralId, defaultValue: 0)  int userReferralId, @JsonKey(name: Keys.branchId, defaultValue: '')  String branchId, @JsonKey(name: Keys.batchId, defaultValue: 0)  int batchId, @JsonKey(name: Keys.roleId, defaultValue: 0)  int roleId, @JsonKey(name: Keys.schoolId, defaultValue: 0)  int schoolId, @JsonKey(name: Keys.schoolOthers, defaultValue: '')  String schoolOthers, @JsonKey(name: Keys.degree, defaultValue: '')  String degree, @JsonKey(name: Keys.nationalityId, defaultValue: 0)  int nationalityId, @JsonKey(name: Keys.nationalityOthers, defaultValue: '')  String nationalityOthers, @JsonKey(name: Keys.cityId, defaultValue: 0)  int cityId, @JsonKey(name: Keys.provinceId, defaultValue: 0)  int provinceId, @JsonKey(name: Keys.profilePicture, defaultValue: '')  String profilePicture, @JsonKey(name: Keys.contactNoPrefix, defaultValue: '')  String contactNoPrefix, @JsonKey(name: Keys.contactNo, defaultValue: '')  String contactNo, @JsonKey(name: Keys.email, defaultValue: '')  String email, @JsonKey(name: Keys.googleId, defaultValue: '')  String googleId, @JsonKey(name: Keys.microsoftId, defaultValue: '')  String microsoftId, @JsonKey(name: Keys.emailVerifiedAt, defaultValue: '')  String emailVerifiedAt, @JsonKey(name: Keys.isActive, defaultValue: 0)  int isActive, @JsonKey(name: Keys.isUpgraded, defaultValue: 0)  int isUpgraded, @JsonKey(name: Keys.isTrial, defaultValue: 0)  int isTrial, @JsonKey(name: Keys.registrationSource, defaultValue: '')  String registrationSource, @JsonKey(name: Keys.approvedBy, defaultValue: 0)  int approvedBy, @JsonKey(name: Keys.approvedAt, defaultValue: '')  String approvedAt, @JsonKey(name: Keys.lastLogin, defaultValue: '')  String lastLogin, @JsonKey(name: Keys.takenDiagnostics, defaultValue: 0)  int takenDiagnostics, @JsonKey(name: Keys.features)  FeaturesModel features, @JsonKey(name: Keys.createdBy, defaultValue: 0)  int createdBy, @JsonKey(name: Keys.updatedBy, defaultValue: 0)  int updatedBy, @JsonKey(name: Keys.createdAt, defaultValue: '')  String createdAt, @JsonKey(name: Keys.updatedAt, defaultValue: '')  String updatedAt, @JsonKey(name: Keys.archivedAt, defaultValue: '')  String archivedAt, @JsonKey(name: Keys.isAdmin, defaultValue: false)  bool isAdmin, @JsonKey(name: Keys.isBranchAdmin, defaultValue: false)  bool isBranchAdmin, @JsonKey(name: Keys.isBranchTeacher, defaultValue: false)  bool isBranchTeacher, @JsonKey(name: Keys.isTeacher, defaultValue: false)  bool isTeacher, @JsonKey(name: Keys.isStudent, defaultValue: false)  bool isStudent, @JsonKey(name: Keys.fullName, defaultValue: '')  String fullName, @JsonKey(name: Keys.hasDefaultPassword, defaultValue: false)  bool hasDefaultPassword, @JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false)  bool isBatchAccessAllowed, @JsonKey(name: Keys.batchTags, defaultValue: [])  List<dynamic> batchTags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.birthday,_that.subscriptionId,_that.userReferralId,_that.branchId,_that.batchId,_that.roleId,_that.schoolId,_that.schoolOthers,_that.degree,_that.nationalityId,_that.nationalityOthers,_that.cityId,_that.provinceId,_that.profilePicture,_that.contactNoPrefix,_that.contactNo,_that.email,_that.googleId,_that.microsoftId,_that.emailVerifiedAt,_that.isActive,_that.isUpgraded,_that.isTrial,_that.registrationSource,_that.approvedBy,_that.approvedAt,_that.lastLogin,_that.takenDiagnostics,_that.features,_that.createdBy,_that.updatedBy,_that.createdAt,_that.updatedAt,_that.archivedAt,_that.isAdmin,_that.isBranchAdmin,_that.isBranchTeacher,_that.isTeacher,_that.isStudent,_that.fullName,_that.hasDefaultPassword,_that.isBatchAccessAllowed,_that.batchTags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: Keys.id, defaultValue: 0)  int id, @JsonKey(name: Keys.firstName, defaultValue: '')  String firstName, @JsonKey(name: Keys.middleName, defaultValue: '')  String middleName, @JsonKey(name: Keys.lastName, defaultValue: '')  String lastName, @JsonKey(name: Keys.gender, defaultValue: '')  String gender, @JsonKey(name: Keys.birthday, defaultValue: '')  String birthday, @JsonKey(name: Keys.subscriptionId, defaultValue: 0)  int subscriptionId, @JsonKey(name: Keys.userReferralId, defaultValue: 0)  int userReferralId, @JsonKey(name: Keys.branchId, defaultValue: '')  String branchId, @JsonKey(name: Keys.batchId, defaultValue: 0)  int batchId, @JsonKey(name: Keys.roleId, defaultValue: 0)  int roleId, @JsonKey(name: Keys.schoolId, defaultValue: 0)  int schoolId, @JsonKey(name: Keys.schoolOthers, defaultValue: '')  String schoolOthers, @JsonKey(name: Keys.degree, defaultValue: '')  String degree, @JsonKey(name: Keys.nationalityId, defaultValue: 0)  int nationalityId, @JsonKey(name: Keys.nationalityOthers, defaultValue: '')  String nationalityOthers, @JsonKey(name: Keys.cityId, defaultValue: 0)  int cityId, @JsonKey(name: Keys.provinceId, defaultValue: 0)  int provinceId, @JsonKey(name: Keys.profilePicture, defaultValue: '')  String profilePicture, @JsonKey(name: Keys.contactNoPrefix, defaultValue: '')  String contactNoPrefix, @JsonKey(name: Keys.contactNo, defaultValue: '')  String contactNo, @JsonKey(name: Keys.email, defaultValue: '')  String email, @JsonKey(name: Keys.googleId, defaultValue: '')  String googleId, @JsonKey(name: Keys.microsoftId, defaultValue: '')  String microsoftId, @JsonKey(name: Keys.emailVerifiedAt, defaultValue: '')  String emailVerifiedAt, @JsonKey(name: Keys.isActive, defaultValue: 0)  int isActive, @JsonKey(name: Keys.isUpgraded, defaultValue: 0)  int isUpgraded, @JsonKey(name: Keys.isTrial, defaultValue: 0)  int isTrial, @JsonKey(name: Keys.registrationSource, defaultValue: '')  String registrationSource, @JsonKey(name: Keys.approvedBy, defaultValue: 0)  int approvedBy, @JsonKey(name: Keys.approvedAt, defaultValue: '')  String approvedAt, @JsonKey(name: Keys.lastLogin, defaultValue: '')  String lastLogin, @JsonKey(name: Keys.takenDiagnostics, defaultValue: 0)  int takenDiagnostics, @JsonKey(name: Keys.features)  FeaturesModel features, @JsonKey(name: Keys.createdBy, defaultValue: 0)  int createdBy, @JsonKey(name: Keys.updatedBy, defaultValue: 0)  int updatedBy, @JsonKey(name: Keys.createdAt, defaultValue: '')  String createdAt, @JsonKey(name: Keys.updatedAt, defaultValue: '')  String updatedAt, @JsonKey(name: Keys.archivedAt, defaultValue: '')  String archivedAt, @JsonKey(name: Keys.isAdmin, defaultValue: false)  bool isAdmin, @JsonKey(name: Keys.isBranchAdmin, defaultValue: false)  bool isBranchAdmin, @JsonKey(name: Keys.isBranchTeacher, defaultValue: false)  bool isBranchTeacher, @JsonKey(name: Keys.isTeacher, defaultValue: false)  bool isTeacher, @JsonKey(name: Keys.isStudent, defaultValue: false)  bool isStudent, @JsonKey(name: Keys.fullName, defaultValue: '')  String fullName, @JsonKey(name: Keys.hasDefaultPassword, defaultValue: false)  bool hasDefaultPassword, @JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false)  bool isBatchAccessAllowed, @JsonKey(name: Keys.batchTags, defaultValue: [])  List<dynamic> batchTags)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.birthday,_that.subscriptionId,_that.userReferralId,_that.branchId,_that.batchId,_that.roleId,_that.schoolId,_that.schoolOthers,_that.degree,_that.nationalityId,_that.nationalityOthers,_that.cityId,_that.provinceId,_that.profilePicture,_that.contactNoPrefix,_that.contactNo,_that.email,_that.googleId,_that.microsoftId,_that.emailVerifiedAt,_that.isActive,_that.isUpgraded,_that.isTrial,_that.registrationSource,_that.approvedBy,_that.approvedAt,_that.lastLogin,_that.takenDiagnostics,_that.features,_that.createdBy,_that.updatedBy,_that.createdAt,_that.updatedAt,_that.archivedAt,_that.isAdmin,_that.isBranchAdmin,_that.isBranchTeacher,_that.isTeacher,_that.isStudent,_that.fullName,_that.hasDefaultPassword,_that.isBatchAccessAllowed,_that.batchTags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: Keys.id, defaultValue: 0)  int id, @JsonKey(name: Keys.firstName, defaultValue: '')  String firstName, @JsonKey(name: Keys.middleName, defaultValue: '')  String middleName, @JsonKey(name: Keys.lastName, defaultValue: '')  String lastName, @JsonKey(name: Keys.gender, defaultValue: '')  String gender, @JsonKey(name: Keys.birthday, defaultValue: '')  String birthday, @JsonKey(name: Keys.subscriptionId, defaultValue: 0)  int subscriptionId, @JsonKey(name: Keys.userReferralId, defaultValue: 0)  int userReferralId, @JsonKey(name: Keys.branchId, defaultValue: '')  String branchId, @JsonKey(name: Keys.batchId, defaultValue: 0)  int batchId, @JsonKey(name: Keys.roleId, defaultValue: 0)  int roleId, @JsonKey(name: Keys.schoolId, defaultValue: 0)  int schoolId, @JsonKey(name: Keys.schoolOthers, defaultValue: '')  String schoolOthers, @JsonKey(name: Keys.degree, defaultValue: '')  String degree, @JsonKey(name: Keys.nationalityId, defaultValue: 0)  int nationalityId, @JsonKey(name: Keys.nationalityOthers, defaultValue: '')  String nationalityOthers, @JsonKey(name: Keys.cityId, defaultValue: 0)  int cityId, @JsonKey(name: Keys.provinceId, defaultValue: 0)  int provinceId, @JsonKey(name: Keys.profilePicture, defaultValue: '')  String profilePicture, @JsonKey(name: Keys.contactNoPrefix, defaultValue: '')  String contactNoPrefix, @JsonKey(name: Keys.contactNo, defaultValue: '')  String contactNo, @JsonKey(name: Keys.email, defaultValue: '')  String email, @JsonKey(name: Keys.googleId, defaultValue: '')  String googleId, @JsonKey(name: Keys.microsoftId, defaultValue: '')  String microsoftId, @JsonKey(name: Keys.emailVerifiedAt, defaultValue: '')  String emailVerifiedAt, @JsonKey(name: Keys.isActive, defaultValue: 0)  int isActive, @JsonKey(name: Keys.isUpgraded, defaultValue: 0)  int isUpgraded, @JsonKey(name: Keys.isTrial, defaultValue: 0)  int isTrial, @JsonKey(name: Keys.registrationSource, defaultValue: '')  String registrationSource, @JsonKey(name: Keys.approvedBy, defaultValue: 0)  int approvedBy, @JsonKey(name: Keys.approvedAt, defaultValue: '')  String approvedAt, @JsonKey(name: Keys.lastLogin, defaultValue: '')  String lastLogin, @JsonKey(name: Keys.takenDiagnostics, defaultValue: 0)  int takenDiagnostics, @JsonKey(name: Keys.features)  FeaturesModel features, @JsonKey(name: Keys.createdBy, defaultValue: 0)  int createdBy, @JsonKey(name: Keys.updatedBy, defaultValue: 0)  int updatedBy, @JsonKey(name: Keys.createdAt, defaultValue: '')  String createdAt, @JsonKey(name: Keys.updatedAt, defaultValue: '')  String updatedAt, @JsonKey(name: Keys.archivedAt, defaultValue: '')  String archivedAt, @JsonKey(name: Keys.isAdmin, defaultValue: false)  bool isAdmin, @JsonKey(name: Keys.isBranchAdmin, defaultValue: false)  bool isBranchAdmin, @JsonKey(name: Keys.isBranchTeacher, defaultValue: false)  bool isBranchTeacher, @JsonKey(name: Keys.isTeacher, defaultValue: false)  bool isTeacher, @JsonKey(name: Keys.isStudent, defaultValue: false)  bool isStudent, @JsonKey(name: Keys.fullName, defaultValue: '')  String fullName, @JsonKey(name: Keys.hasDefaultPassword, defaultValue: false)  bool hasDefaultPassword, @JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false)  bool isBatchAccessAllowed, @JsonKey(name: Keys.batchTags, defaultValue: [])  List<dynamic> batchTags)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.birthday,_that.subscriptionId,_that.userReferralId,_that.branchId,_that.batchId,_that.roleId,_that.schoolId,_that.schoolOthers,_that.degree,_that.nationalityId,_that.nationalityOthers,_that.cityId,_that.provinceId,_that.profilePicture,_that.contactNoPrefix,_that.contactNo,_that.email,_that.googleId,_that.microsoftId,_that.emailVerifiedAt,_that.isActive,_that.isUpgraded,_that.isTrial,_that.registrationSource,_that.approvedBy,_that.approvedAt,_that.lastLogin,_that.takenDiagnostics,_that.features,_that.createdBy,_that.updatedBy,_that.createdAt,_that.updatedAt,_that.archivedAt,_that.isAdmin,_that.isBranchAdmin,_that.isBranchTeacher,_that.isTeacher,_that.isStudent,_that.fullName,_that.hasDefaultPassword,_that.isBatchAccessAllowed,_that.batchTags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: Keys.id, defaultValue: 0) required this.id, @JsonKey(name: Keys.firstName, defaultValue: '') required this.firstName, @JsonKey(name: Keys.middleName, defaultValue: '') required this.middleName, @JsonKey(name: Keys.lastName, defaultValue: '') required this.lastName, @JsonKey(name: Keys.gender, defaultValue: '') required this.gender, @JsonKey(name: Keys.birthday, defaultValue: '') required this.birthday, @JsonKey(name: Keys.subscriptionId, defaultValue: 0) required this.subscriptionId, @JsonKey(name: Keys.userReferralId, defaultValue: 0) required this.userReferralId, @JsonKey(name: Keys.branchId, defaultValue: '') required this.branchId, @JsonKey(name: Keys.batchId, defaultValue: 0) required this.batchId, @JsonKey(name: Keys.roleId, defaultValue: 0) required this.roleId, @JsonKey(name: Keys.schoolId, defaultValue: 0) required this.schoolId, @JsonKey(name: Keys.schoolOthers, defaultValue: '') required this.schoolOthers, @JsonKey(name: Keys.degree, defaultValue: '') required this.degree, @JsonKey(name: Keys.nationalityId, defaultValue: 0) required this.nationalityId, @JsonKey(name: Keys.nationalityOthers, defaultValue: '') required this.nationalityOthers, @JsonKey(name: Keys.cityId, defaultValue: 0) required this.cityId, @JsonKey(name: Keys.provinceId, defaultValue: 0) required this.provinceId, @JsonKey(name: Keys.profilePicture, defaultValue: '') required this.profilePicture, @JsonKey(name: Keys.contactNoPrefix, defaultValue: '') required this.contactNoPrefix, @JsonKey(name: Keys.contactNo, defaultValue: '') required this.contactNo, @JsonKey(name: Keys.email, defaultValue: '') required this.email, @JsonKey(name: Keys.googleId, defaultValue: '') required this.googleId, @JsonKey(name: Keys.microsoftId, defaultValue: '') required this.microsoftId, @JsonKey(name: Keys.emailVerifiedAt, defaultValue: '') required this.emailVerifiedAt, @JsonKey(name: Keys.isActive, defaultValue: 0) required this.isActive, @JsonKey(name: Keys.isUpgraded, defaultValue: 0) required this.isUpgraded, @JsonKey(name: Keys.isTrial, defaultValue: 0) required this.isTrial, @JsonKey(name: Keys.registrationSource, defaultValue: '') required this.registrationSource, @JsonKey(name: Keys.approvedBy, defaultValue: 0) required this.approvedBy, @JsonKey(name: Keys.approvedAt, defaultValue: '') required this.approvedAt, @JsonKey(name: Keys.lastLogin, defaultValue: '') required this.lastLogin, @JsonKey(name: Keys.takenDiagnostics, defaultValue: 0) required this.takenDiagnostics, @JsonKey(name: Keys.features) required this.features, @JsonKey(name: Keys.createdBy, defaultValue: 0) required this.createdBy, @JsonKey(name: Keys.updatedBy, defaultValue: 0) required this.updatedBy, @JsonKey(name: Keys.createdAt, defaultValue: '') required this.createdAt, @JsonKey(name: Keys.updatedAt, defaultValue: '') required this.updatedAt, @JsonKey(name: Keys.archivedAt, defaultValue: '') required this.archivedAt, @JsonKey(name: Keys.isAdmin, defaultValue: false) required this.isAdmin, @JsonKey(name: Keys.isBranchAdmin, defaultValue: false) required this.isBranchAdmin, @JsonKey(name: Keys.isBranchTeacher, defaultValue: false) required this.isBranchTeacher, @JsonKey(name: Keys.isTeacher, defaultValue: false) required this.isTeacher, @JsonKey(name: Keys.isStudent, defaultValue: false) required this.isStudent, @JsonKey(name: Keys.fullName, defaultValue: '') required this.fullName, @JsonKey(name: Keys.hasDefaultPassword, defaultValue: false) required this.hasDefaultPassword, @JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false) required this.isBatchAccessAllowed, @JsonKey(name: Keys.batchTags, defaultValue: []) required final  List<dynamic> batchTags}): _batchTags = batchTags;
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: Keys.id, defaultValue: 0) final  int id;
@override@JsonKey(name: Keys.firstName, defaultValue: '') final  String firstName;
@override@JsonKey(name: Keys.middleName, defaultValue: '') final  String middleName;
@override@JsonKey(name: Keys.lastName, defaultValue: '') final  String lastName;
@override@JsonKey(name: Keys.gender, defaultValue: '') final  String gender;
@override@JsonKey(name: Keys.birthday, defaultValue: '') final  String birthday;
@override@JsonKey(name: Keys.subscriptionId, defaultValue: 0) final  int subscriptionId;
@override@JsonKey(name: Keys.userReferralId, defaultValue: 0) final  int userReferralId;
@override@JsonKey(name: Keys.branchId, defaultValue: '') final  String branchId;
@override@JsonKey(name: Keys.batchId, defaultValue: 0) final  int batchId;
@override@JsonKey(name: Keys.roleId, defaultValue: 0) final  int roleId;
@override@JsonKey(name: Keys.schoolId, defaultValue: 0) final  int schoolId;
@override@JsonKey(name: Keys.schoolOthers, defaultValue: '') final  String schoolOthers;
@override@JsonKey(name: Keys.degree, defaultValue: '') final  String degree;
@override@JsonKey(name: Keys.nationalityId, defaultValue: 0) final  int nationalityId;
@override@JsonKey(name: Keys.nationalityOthers, defaultValue: '') final  String nationalityOthers;
@override@JsonKey(name: Keys.cityId, defaultValue: 0) final  int cityId;
@override@JsonKey(name: Keys.provinceId, defaultValue: 0) final  int provinceId;
@override@JsonKey(name: Keys.profilePicture, defaultValue: '') final  String profilePicture;
@override@JsonKey(name: Keys.contactNoPrefix, defaultValue: '') final  String contactNoPrefix;
@override@JsonKey(name: Keys.contactNo, defaultValue: '') final  String contactNo;
@override@JsonKey(name: Keys.email, defaultValue: '') final  String email;
@override@JsonKey(name: Keys.googleId, defaultValue: '') final  String googleId;
@override@JsonKey(name: Keys.microsoftId, defaultValue: '') final  String microsoftId;
@override@JsonKey(name: Keys.emailVerifiedAt, defaultValue: '') final  String emailVerifiedAt;
@override@JsonKey(name: Keys.isActive, defaultValue: 0) final  int isActive;
@override@JsonKey(name: Keys.isUpgraded, defaultValue: 0) final  int isUpgraded;
@override@JsonKey(name: Keys.isTrial, defaultValue: 0) final  int isTrial;
@override@JsonKey(name: Keys.registrationSource, defaultValue: '') final  String registrationSource;
@override@JsonKey(name: Keys.approvedBy, defaultValue: 0) final  int approvedBy;
@override@JsonKey(name: Keys.approvedAt, defaultValue: '') final  String approvedAt;
@override@JsonKey(name: Keys.lastLogin, defaultValue: '') final  String lastLogin;
@override@JsonKey(name: Keys.takenDiagnostics, defaultValue: 0) final  int takenDiagnostics;
@override@JsonKey(name: Keys.features) final  FeaturesModel features;
@override@JsonKey(name: Keys.createdBy, defaultValue: 0) final  int createdBy;
@override@JsonKey(name: Keys.updatedBy, defaultValue: 0) final  int updatedBy;
@override@JsonKey(name: Keys.createdAt, defaultValue: '') final  String createdAt;
@override@JsonKey(name: Keys.updatedAt, defaultValue: '') final  String updatedAt;
@override@JsonKey(name: Keys.archivedAt, defaultValue: '') final  String archivedAt;
@override@JsonKey(name: Keys.isAdmin, defaultValue: false) final  bool isAdmin;
@override@JsonKey(name: Keys.isBranchAdmin, defaultValue: false) final  bool isBranchAdmin;
@override@JsonKey(name: Keys.isBranchTeacher, defaultValue: false) final  bool isBranchTeacher;
@override@JsonKey(name: Keys.isTeacher, defaultValue: false) final  bool isTeacher;
@override@JsonKey(name: Keys.isStudent, defaultValue: false) final  bool isStudent;
@override@JsonKey(name: Keys.fullName, defaultValue: '') final  String fullName;
@override@JsonKey(name: Keys.hasDefaultPassword, defaultValue: false) final  bool hasDefaultPassword;
@override@JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false) final  bool isBatchAccessAllowed;
 final  List<dynamic> _batchTags;
@override@JsonKey(name: Keys.batchTags, defaultValue: []) List<dynamic> get batchTags {
  if (_batchTags is EqualUnmodifiableListView) return _batchTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_batchTags);
}


/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.userReferralId, userReferralId) || other.userReferralId == userReferralId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolOthers, schoolOthers) || other.schoolOthers == schoolOthers)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.nationalityId, nationalityId) || other.nationalityId == nationalityId)&&(identical(other.nationalityOthers, nationalityOthers) || other.nationalityOthers == nationalityOthers)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.contactNoPrefix, contactNoPrefix) || other.contactNoPrefix == contactNoPrefix)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.googleId, googleId) || other.googleId == googleId)&&(identical(other.microsoftId, microsoftId) || other.microsoftId == microsoftId)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isUpgraded, isUpgraded) || other.isUpgraded == isUpgraded)&&(identical(other.isTrial, isTrial) || other.isTrial == isTrial)&&(identical(other.registrationSource, registrationSource) || other.registrationSource == registrationSource)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.takenDiagnostics, takenDiagnostics) || other.takenDiagnostics == takenDiagnostics)&&(identical(other.features, features) || other.features == features)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.archivedAt, archivedAt) || other.archivedAt == archivedAt)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.isBranchAdmin, isBranchAdmin) || other.isBranchAdmin == isBranchAdmin)&&(identical(other.isBranchTeacher, isBranchTeacher) || other.isBranchTeacher == isBranchTeacher)&&(identical(other.isTeacher, isTeacher) || other.isTeacher == isTeacher)&&(identical(other.isStudent, isStudent) || other.isStudent == isStudent)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.hasDefaultPassword, hasDefaultPassword) || other.hasDefaultPassword == hasDefaultPassword)&&(identical(other.isBatchAccessAllowed, isBatchAccessAllowed) || other.isBatchAccessAllowed == isBatchAccessAllowed)&&const DeepCollectionEquality().equals(other._batchTags, _batchTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,middleName,lastName,gender,birthday,subscriptionId,userReferralId,branchId,batchId,roleId,schoolId,schoolOthers,degree,nationalityId,nationalityOthers,cityId,provinceId,profilePicture,contactNoPrefix,contactNo,email,googleId,microsoftId,emailVerifiedAt,isActive,isUpgraded,isTrial,registrationSource,approvedBy,approvedAt,lastLogin,takenDiagnostics,features,createdBy,updatedBy,createdAt,updatedAt,archivedAt,isAdmin,isBranchAdmin,isBranchTeacher,isTeacher,isStudent,fullName,hasDefaultPassword,isBatchAccessAllowed,const DeepCollectionEquality().hash(_batchTags)]);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, birthday: $birthday, subscriptionId: $subscriptionId, userReferralId: $userReferralId, branchId: $branchId, batchId: $batchId, roleId: $roleId, schoolId: $schoolId, schoolOthers: $schoolOthers, degree: $degree, nationalityId: $nationalityId, nationalityOthers: $nationalityOthers, cityId: $cityId, provinceId: $provinceId, profilePicture: $profilePicture, contactNoPrefix: $contactNoPrefix, contactNo: $contactNo, email: $email, googleId: $googleId, microsoftId: $microsoftId, emailVerifiedAt: $emailVerifiedAt, isActive: $isActive, isUpgraded: $isUpgraded, isTrial: $isTrial, registrationSource: $registrationSource, approvedBy: $approvedBy, approvedAt: $approvedAt, lastLogin: $lastLogin, takenDiagnostics: $takenDiagnostics, features: $features, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt, archivedAt: $archivedAt, isAdmin: $isAdmin, isBranchAdmin: $isBranchAdmin, isBranchTeacher: $isBranchTeacher, isTeacher: $isTeacher, isStudent: $isStudent, fullName: $fullName, hasDefaultPassword: $hasDefaultPassword, isBatchAccessAllowed: $isBatchAccessAllowed, batchTags: $batchTags)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: Keys.id, defaultValue: 0) int id,@JsonKey(name: Keys.firstName, defaultValue: '') String firstName,@JsonKey(name: Keys.middleName, defaultValue: '') String middleName,@JsonKey(name: Keys.lastName, defaultValue: '') String lastName,@JsonKey(name: Keys.gender, defaultValue: '') String gender,@JsonKey(name: Keys.birthday, defaultValue: '') String birthday,@JsonKey(name: Keys.subscriptionId, defaultValue: 0) int subscriptionId,@JsonKey(name: Keys.userReferralId, defaultValue: 0) int userReferralId,@JsonKey(name: Keys.branchId, defaultValue: '') String branchId,@JsonKey(name: Keys.batchId, defaultValue: 0) int batchId,@JsonKey(name: Keys.roleId, defaultValue: 0) int roleId,@JsonKey(name: Keys.schoolId, defaultValue: 0) int schoolId,@JsonKey(name: Keys.schoolOthers, defaultValue: '') String schoolOthers,@JsonKey(name: Keys.degree, defaultValue: '') String degree,@JsonKey(name: Keys.nationalityId, defaultValue: 0) int nationalityId,@JsonKey(name: Keys.nationalityOthers, defaultValue: '') String nationalityOthers,@JsonKey(name: Keys.cityId, defaultValue: 0) int cityId,@JsonKey(name: Keys.provinceId, defaultValue: 0) int provinceId,@JsonKey(name: Keys.profilePicture, defaultValue: '') String profilePicture,@JsonKey(name: Keys.contactNoPrefix, defaultValue: '') String contactNoPrefix,@JsonKey(name: Keys.contactNo, defaultValue: '') String contactNo,@JsonKey(name: Keys.email, defaultValue: '') String email,@JsonKey(name: Keys.googleId, defaultValue: '') String googleId,@JsonKey(name: Keys.microsoftId, defaultValue: '') String microsoftId,@JsonKey(name: Keys.emailVerifiedAt, defaultValue: '') String emailVerifiedAt,@JsonKey(name: Keys.isActive, defaultValue: 0) int isActive,@JsonKey(name: Keys.isUpgraded, defaultValue: 0) int isUpgraded,@JsonKey(name: Keys.isTrial, defaultValue: 0) int isTrial,@JsonKey(name: Keys.registrationSource, defaultValue: '') String registrationSource,@JsonKey(name: Keys.approvedBy, defaultValue: 0) int approvedBy,@JsonKey(name: Keys.approvedAt, defaultValue: '') String approvedAt,@JsonKey(name: Keys.lastLogin, defaultValue: '') String lastLogin,@JsonKey(name: Keys.takenDiagnostics, defaultValue: 0) int takenDiagnostics,@JsonKey(name: Keys.features) FeaturesModel features,@JsonKey(name: Keys.createdBy, defaultValue: 0) int createdBy,@JsonKey(name: Keys.updatedBy, defaultValue: 0) int updatedBy,@JsonKey(name: Keys.createdAt, defaultValue: '') String createdAt,@JsonKey(name: Keys.updatedAt, defaultValue: '') String updatedAt,@JsonKey(name: Keys.archivedAt, defaultValue: '') String archivedAt,@JsonKey(name: Keys.isAdmin, defaultValue: false) bool isAdmin,@JsonKey(name: Keys.isBranchAdmin, defaultValue: false) bool isBranchAdmin,@JsonKey(name: Keys.isBranchTeacher, defaultValue: false) bool isBranchTeacher,@JsonKey(name: Keys.isTeacher, defaultValue: false) bool isTeacher,@JsonKey(name: Keys.isStudent, defaultValue: false) bool isStudent,@JsonKey(name: Keys.fullName, defaultValue: '') String fullName,@JsonKey(name: Keys.hasDefaultPassword, defaultValue: false) bool hasDefaultPassword,@JsonKey(name: Keys.isBatchAccessAllowed, defaultValue: false) bool isBatchAccessAllowed,@JsonKey(name: Keys.batchTags, defaultValue: []) List<dynamic> batchTags
});


@override $FeaturesModelCopyWith<$Res> get features;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? middleName = null,Object? lastName = null,Object? gender = null,Object? birthday = null,Object? subscriptionId = null,Object? userReferralId = null,Object? branchId = null,Object? batchId = null,Object? roleId = null,Object? schoolId = null,Object? schoolOthers = null,Object? degree = null,Object? nationalityId = null,Object? nationalityOthers = null,Object? cityId = null,Object? provinceId = null,Object? profilePicture = null,Object? contactNoPrefix = null,Object? contactNo = null,Object? email = null,Object? googleId = null,Object? microsoftId = null,Object? emailVerifiedAt = null,Object? isActive = null,Object? isUpgraded = null,Object? isTrial = null,Object? registrationSource = null,Object? approvedBy = null,Object? approvedAt = null,Object? lastLogin = null,Object? takenDiagnostics = null,Object? features = null,Object? createdBy = null,Object? updatedBy = null,Object? createdAt = null,Object? updatedAt = null,Object? archivedAt = null,Object? isAdmin = null,Object? isBranchAdmin = null,Object? isBranchTeacher = null,Object? isTeacher = null,Object? isStudent = null,Object? fullName = null,Object? hasDefaultPassword = null,Object? isBatchAccessAllowed = null,Object? batchTags = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,middleName: null == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,birthday: null == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String,subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as int,userReferralId: null == userReferralId ? _self.userReferralId : userReferralId // ignore: cast_nullable_to_non_nullable
as int,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as int,roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,schoolOthers: null == schoolOthers ? _self.schoolOthers : schoolOthers // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,nationalityId: null == nationalityId ? _self.nationalityId : nationalityId // ignore: cast_nullable_to_non_nullable
as int,nationalityOthers: null == nationalityOthers ? _self.nationalityOthers : nationalityOthers // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,provinceId: null == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as int,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String,contactNoPrefix: null == contactNoPrefix ? _self.contactNoPrefix : contactNoPrefix // ignore: cast_nullable_to_non_nullable
as String,contactNo: null == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,googleId: null == googleId ? _self.googleId : googleId // ignore: cast_nullable_to_non_nullable
as String,microsoftId: null == microsoftId ? _self.microsoftId : microsoftId // ignore: cast_nullable_to_non_nullable
as String,emailVerifiedAt: null == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,isUpgraded: null == isUpgraded ? _self.isUpgraded : isUpgraded // ignore: cast_nullable_to_non_nullable
as int,isTrial: null == isTrial ? _self.isTrial : isTrial // ignore: cast_nullable_to_non_nullable
as int,registrationSource: null == registrationSource ? _self.registrationSource : registrationSource // ignore: cast_nullable_to_non_nullable
as String,approvedBy: null == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as int,approvedAt: null == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String,lastLogin: null == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String,takenDiagnostics: null == takenDiagnostics ? _self.takenDiagnostics : takenDiagnostics // ignore: cast_nullable_to_non_nullable
as int,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as FeaturesModel,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int,updatedBy: null == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,archivedAt: null == archivedAt ? _self.archivedAt : archivedAt // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,isBranchAdmin: null == isBranchAdmin ? _self.isBranchAdmin : isBranchAdmin // ignore: cast_nullable_to_non_nullable
as bool,isBranchTeacher: null == isBranchTeacher ? _self.isBranchTeacher : isBranchTeacher // ignore: cast_nullable_to_non_nullable
as bool,isTeacher: null == isTeacher ? _self.isTeacher : isTeacher // ignore: cast_nullable_to_non_nullable
as bool,isStudent: null == isStudent ? _self.isStudent : isStudent // ignore: cast_nullable_to_non_nullable
as bool,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,hasDefaultPassword: null == hasDefaultPassword ? _self.hasDefaultPassword : hasDefaultPassword // ignore: cast_nullable_to_non_nullable
as bool,isBatchAccessAllowed: null == isBatchAccessAllowed ? _self.isBatchAccessAllowed : isBatchAccessAllowed // ignore: cast_nullable_to_non_nullable
as bool,batchTags: null == batchTags ? _self._batchTags : batchTags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeaturesModelCopyWith<$Res> get features {
  
  return $FeaturesModelCopyWith<$Res>(_self.features, (value) {
    return _then(_self.copyWith(features: value));
  });
}
}

// dart format on
