// login_user_dto.dart
import 'package:chat_app_frontend_flutter/shared/dtos/users/email_dto.dart';

class RegisterUserDTO {
  final String name;

  final EmailDTO email;

  final String password;

  final String? gender;

  final String? role;

  RegisterUserDTO({
    required this.name,
    required this.email,
    required this.password,
    this.gender,
    this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,

      'email': email.toJson(), // Convert EmailDTO to JSON

      'password': password,

      'gender': gender,

      'role': role,
    };
  }
}
