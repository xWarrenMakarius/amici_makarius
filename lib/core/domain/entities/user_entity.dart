import 'features_entity.dart';

class UserEntity {

  const UserEntity({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.gender,
    required this.birthday,
    required this.subscriptionId,
    required this.userReferralId,
    required this.branchId,
    required this.batchId,
    required this.roleId,
    required this.schoolId,
    required this.schoolOthers,
    required this.degree,
    required this.nationalityId,
    required this.nationalityOthers,
    required this.cityId,
    required this.provinceId,
    required this.profilePicture,
    required this.contactNoPrefix,
    required this.contactNo,
    required this.email,
    required this.googleId,
    required this.microsoftId,
    required this.emailVerifiedAt,
    required this.isActive,
    required this.isUpgraded,
    required this.isTrial,
    required this.registrationSource,
    required this.approvedBy,
    required this.approvedAt,
    required this.lastLogin,
    required this.takenDiagnostics,
    required this.features,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.archivedAt,
    required this.isAdmin,
    required this.isBranchAdmin,
    required this.isBranchTeacher,
    required this.isTeacher,
    required this.isStudent,
    required this.fullName,
    required this.hasDefaultPassword,
    required this.isBatchAccessAllowed,
    required this.batchTags,
  });

  final int id;
  final String firstName;
  final String middleName;
  final String lastName;
  final String gender;
  final String birthday;
  final int subscriptionId;
  final int userReferralId;
  final dynamic branchId;
  final int batchId;
  final int roleId;
  final int schoolId;
  final String schoolOthers;
  final String degree;
  final int nationalityId;
  final String nationalityOthers;
  final int cityId;
  final int provinceId;
  final String profilePicture;
  final String contactNoPrefix;
  final String contactNo;
  final String email;
  final String googleId;
  final String microsoftId;
  final String emailVerifiedAt;
  final int isActive;
  final int isUpgraded;
  final int isTrial;
  final String registrationSource;
  final int approvedBy;
  final String approvedAt;
  final String lastLogin;
  final int takenDiagnostics;
  final FeaturesEntity features;
  final int createdBy;
  final int updatedBy;
  final String createdAt;
  final String updatedAt;
  final String archivedAt;
  final bool isAdmin;
  final bool isBranchAdmin;
  final bool isBranchTeacher;
  final bool isTeacher;
  final bool isStudent;
  final String fullName;
  final bool hasDefaultPassword;
  final bool isBatchAccessAllowed;
  final List<dynamic> batchTags;

}