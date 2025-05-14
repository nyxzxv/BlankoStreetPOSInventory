// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsStruct extends BaseStruct {
  UserDetailsStruct({
    String? firstName,
    String? lastName,
    String? email,
    String? role,
  })  : _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _role = role;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

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

  static UserDetailsStruct fromMap(Map<String, dynamic> data) =>
      UserDetailsStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
        role: data['role'] as String?,
      );

  static UserDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
        'role': _role,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
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

  static UserDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDetailsStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
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
  String toString() => 'UserDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDetailsStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        role == other.role;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([firstName, lastName, email, role]);
}

UserDetailsStruct createUserDetailsStruct({
  String? firstName,
  String? lastName,
  String? email,
  String? role,
}) =>
    UserDetailsStruct(
      firstName: firstName,
      lastName: lastName,
      email: email,
      role: role,
    );
