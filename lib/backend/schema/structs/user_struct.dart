// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? businessId,
    String? email,
    String? role,
  })  : _businessId = businessId,
        _email = email,
        _role = role;

  // "business_id" field.
  int? _businessId;
  int get businessId => _businessId ?? 0;
  set businessId(int? val) => _businessId = val;

  void incrementBusinessId(int amount) => businessId = businessId + amount;

  bool hasBusinessId() => _businessId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        businessId: castToType<int>(data['business_id']),
        email: data['email'] as String?,
        role: data['role'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'business_id': _businessId,
        'email': _email,
        'role': _role,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'business_id': serializeParam(
          _businessId,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        businessId: deserializeParam(
          data['business_id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        businessId == other.businessId &&
        email == other.email &&
        role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([businessId, email, role]);
}

UserStruct createUserStruct({
  int? businessId,
  String? email,
  String? role,
}) =>
    UserStruct(
      businessId: businessId,
      email: email,
      role: role,
    );
