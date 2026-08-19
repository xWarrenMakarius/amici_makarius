import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../core/data/models/features_model/features_model.dart';
import '../core/domain/entities/features_entity.dart';
import '../core/domain/entities/user_entity.dart';
import '../core/resources/keys.dart';


class SharedPreferencesManager {

  static SharedPreferencesManager? _instance;
  final SharedPreferences _prefs;

  SharedPreferencesManager(this._prefs);

  static const _isLoggedInKey = "is_logged_in_key";
  static const _deviceIdKey = 'device_id_key';
  static const _accessTokenKey = 'access_token_key';

  static Future<SharedPreferencesManager> getInstance() async {
    if (_instance == null) {
      final prefs = await SharedPreferences.getInstance();
      _instance = SharedPreferencesManager(prefs);
    }
    return _instance!;
  }

  Future<void> setLoggedIn(bool value) async => await _prefs.setBool(_isLoggedInKey, value);
  bool get isLoggedIn => _prefs.getBool(_isLoggedInKey) ?? false;

  Future<void> setDeviceId(String value) async => await _prefs.setString(_deviceIdKey, value);
  String get getDeviceId => _prefs.getString(_deviceIdKey) ?? '';

  Future<void> setAccessToken(String value) async => await _prefs.setString(_accessTokenKey, value);
  String get getAccessToken => _prefs.getString(_accessTokenKey) ?? '';

  Future<void> setUser(UserEntity entity) async {
    await _prefs.setInt(Keys.id, entity.id);
    await _prefs.setString(Keys.firstName, entity.firstName);
    await _prefs.setString(Keys.middleName, entity.middleName);
    await _prefs.setString(Keys.lastName, entity.lastName);
    await _prefs.setString(Keys.gender, entity.gender);
    await _prefs.setString(Keys.birthday, entity.birthday);
    await _prefs.setInt(Keys.subscriptionId, entity.subscriptionId);
    await _prefs.setInt(Keys.userReferralId, entity.userReferralId);
    await _prefs.setString(Keys.branchId,entity.branchId.toString());
    await _prefs.setInt(Keys.batchId, entity.batchId);
    await _prefs.setInt(Keys.roleId, entity.roleId);
    await _prefs.setInt(Keys.schoolId, entity.schoolId);
    await _prefs.setString(Keys.schoolOthers, entity.schoolOthers);
    await _prefs.setString(Keys.degree, entity.degree);
    await _prefs.setInt(Keys.nationalityId, entity.nationalityId);
    await _prefs.setString(Keys.nationalityOthers, entity.nationalityOthers);
    await _prefs.setInt(Keys.cityId, entity.cityId);
    await _prefs.setInt(Keys.provinceId, entity.provinceId);
    await _prefs.setString(Keys.profilePicture, entity.profilePicture);
    await _prefs.setString(Keys.contactNoPrefix, entity.contactNoPrefix);
    await _prefs.setString(Keys.contactNo, entity.contactNo);
    await _prefs.setString(Keys.email, entity.email);
    await _prefs.setString(Keys.googleId, entity.googleId.toString());
    await _prefs.setString(Keys.microsoftId, entity.microsoftId.toString());
    await _prefs.setString(Keys.emailVerifiedAt, entity.emailVerifiedAt.toString());
    await _prefs.setInt(Keys.isActive, entity.isActive);
    await _prefs.setInt(Keys.isUpgraded, entity.isUpgraded);
    await _prefs.setInt(Keys.isTrial, entity.isTrial);
    await _prefs.setString( Keys.registrationSource, entity.registrationSource.toString());
    await _prefs.setInt(Keys.approvedBy, entity.approvedBy);
    await _prefs.setString(Keys.approvedAt, entity.approvedAt);
    await _prefs.setString(Keys.lastLogin, entity.lastLogin);
    await _prefs.setInt(Keys.takenDiagnostics,entity.takenDiagnostics);
    await _prefs.setString(Keys.features, jsonEncode(entity.features.toJson()));
    await _prefs.setInt(Keys.createdBy, entity.createdBy);
    await _prefs.setInt(Keys.updatedBy, entity.updatedBy);
    await _prefs.setString(Keys.createdAt, entity.createdAt);
    await _prefs.setString(Keys.updatedAt, entity.updatedAt);
    await _prefs.setString(Keys.archivedAt, entity.archivedAt.toString());
    await _prefs.setBool(Keys.isAdmin, entity.isAdmin);
    await _prefs.setBool(Keys.isBranchAdmin, entity.isBranchAdmin);
    await _prefs.setBool(Keys.isBranchTeacher, entity.isBranchTeacher);
    await _prefs.setBool(Keys.isTeacher, entity.isTeacher);
    await _prefs.setBool(Keys.isStudent, entity.isStudent);
    await _prefs.setString(Keys.fullName, entity.fullName);
    await _prefs.setBool(Keys.hasDefaultPassword, entity.hasDefaultPassword);
    await _prefs.setBool(Keys.isBatchAccessAllowed, entity.isBatchAccessAllowed);
    await _prefs.setString(Keys.batchTags, jsonEncode(entity.batchTags));
  }


  UserEntity? getUser() {
    final id = _prefs.getInt(Keys.id);

    if (id == null) {
      return null;
    }

    final featuresJson = _prefs.getString(Keys.features);
    final batchTagsJson = _prefs.getString(Keys.batchTags);

    return UserEntity(
      id: id,
      firstName: _prefs.getString(Keys.firstName) ?? '',
      middleName: _prefs.getString(Keys.middleName) ?? '',
      lastName: _prefs.getString(Keys.lastName) ?? '',
      gender: _prefs.getString(Keys.gender) ?? '',
      birthday: _prefs.getString(Keys.birthday) ?? '',
      subscriptionId: _prefs.getInt(Keys.subscriptionId) ?? 0,
      userReferralId: _prefs.getInt(Keys.userReferralId) ?? 0,
      branchId: _prefs.getString(Keys.branchId),
      batchId: _prefs.getInt(Keys.batchId) ?? 0,
      roleId: _prefs.getInt(Keys.roleId) ?? 0,
      schoolId: _prefs.getInt(Keys.schoolId) ?? 0,
      schoolOthers: _prefs.getString(Keys.schoolOthers) ?? '',
      degree: _prefs.getString(Keys.degree) ?? '',
      nationalityId: _prefs.getInt(Keys.nationalityId) ?? 0,
      nationalityOthers: _prefs.getString(Keys.nationalityOthers) ?? '',
      cityId: _prefs.getInt(Keys.cityId) ?? 0,
      provinceId: _prefs.getInt(Keys.provinceId) ?? 0,
      profilePicture: _prefs.getString(Keys.profilePicture) ?? '',
      contactNoPrefix: _prefs.getString(Keys.contactNoPrefix) ?? '',
      contactNo: _prefs.getString(Keys.contactNo) ?? '',
      email: _prefs.getString(Keys.email) ?? '',
      googleId: _prefs.getString(Keys.googleId) ?? '',
      microsoftId: _prefs.getString(Keys.microsoftId) ?? '',
      emailVerifiedAt: _prefs.getString(Keys.emailVerifiedAt) ?? '',
      isActive: _prefs.getInt(Keys.isActive) ?? 0,
      isUpgraded: _prefs.getInt(Keys.isUpgraded) ?? 0,
      isTrial: _prefs.getInt(Keys.isTrial) ?? 0,
      registrationSource: _prefs.getString(Keys.registrationSource) ?? '',
      approvedBy: _prefs.getInt(Keys.approvedBy) ?? 0,
      approvedAt: _prefs.getString(Keys.approvedAt) ?? '',
      lastLogin: _prefs.getString(Keys.lastLogin) ?? '',
      takenDiagnostics: _prefs.getInt(Keys.takenDiagnostics) ?? 0,
      features: FeaturesModel.fromJson(jsonDecode(featuresJson ?? '') as Map<String, dynamic>).toEntity(),
      createdBy: _prefs.getInt(Keys.createdBy) ?? 0,
      updatedBy: _prefs.getInt(Keys.updatedBy) ?? 0,
      createdAt: _prefs.getString(Keys.createdAt) ?? '',
      updatedAt: _prefs.getString(Keys.updatedAt) ?? '',
      archivedAt: _prefs.getString(Keys.archivedAt) ?? '',
      isAdmin: _prefs.getBool(Keys.isAdmin) ?? false,
      isBranchAdmin: _prefs.getBool(Keys.isBranchAdmin) ?? false,
      isBranchTeacher: _prefs.getBool(Keys.isBranchTeacher) ?? false,
      isTeacher: _prefs.getBool(Keys.isTeacher) ?? false,
      isStudent: _prefs.getBool(Keys.isStudent) ?? false,
      fullName: _prefs.getString(Keys.fullName) ?? '',
      hasDefaultPassword: _prefs.getBool(Keys.hasDefaultPassword) ?? false,
      isBatchAccessAllowed: _prefs.getBool(Keys.isBatchAccessAllowed) ?? false,
      batchTags:  List<dynamic>.from(jsonDecode(batchTagsJson ?? ''))
    );
  }

  Future<void> removeUser() async {
    await _prefs.remove(Keys.id);
    await _prefs.remove(Keys.firstName);
    await _prefs.remove(Keys.middleName);
    await _prefs.remove(Keys.lastName);
    await _prefs.remove(Keys.gender);
    await _prefs.remove(Keys.birthday);
    await _prefs.remove(Keys.subscriptionId);
    await _prefs.remove(Keys.userReferralId);
    await _prefs.remove(Keys.branchId);
    await _prefs.remove(Keys.batchId);
    await _prefs.remove(Keys.roleId);
    await _prefs.remove(Keys.schoolId);
    await _prefs.remove(Keys.schoolOthers);
    await _prefs.remove(Keys.degree);
    await _prefs.remove(Keys.nationalityId);
    await _prefs.remove(Keys.nationalityOthers);
    await _prefs.remove(Keys.cityId);
    await _prefs.remove(Keys.provinceId);
    await _prefs.remove(Keys.profilePicture);
    await _prefs.remove(Keys.contactNoPrefix);
    await _prefs.remove(Keys.contactNo);
    await _prefs.remove(Keys.email);
    await _prefs.remove(Keys.googleId);
    await _prefs.remove(Keys.microsoftId);
    await _prefs.remove(Keys.emailVerifiedAt);
    await _prefs.remove(Keys.isActive);
    await _prefs.remove(Keys.isUpgraded);
    await _prefs.remove(Keys.isTrial);
    await _prefs.remove(Keys.registrationSource);
    await _prefs.remove(Keys.approvedBy);
    await _prefs.remove(Keys.approvedAt);
    await _prefs.remove(Keys.lastLogin);
    await _prefs.remove(Keys.takenDiagnostics);
    await _prefs.remove(Keys.features);
    await _prefs.remove(Keys.createdBy);
    await _prefs.remove(Keys.updatedBy);
    await _prefs.remove(Keys.createdAt);
    await _prefs.remove(Keys.updatedAt);
    await _prefs.remove(Keys.archivedAt);
    await _prefs.remove(Keys.isAdmin);
    await _prefs.remove(Keys.isBranchAdmin);
    await _prefs.remove(Keys.isBranchTeacher);
    await _prefs.remove(Keys.isTeacher);
    await _prefs.remove(Keys.isStudent);
    await _prefs.remove(Keys.fullName);
    await _prefs.remove(Keys.hasDefaultPassword);
    await _prefs.remove(Keys.isBatchAccessAllowed);
    await _prefs.remove(Keys.batchTags);
  }

  void reset() {
    _prefs.clear();
  }
}