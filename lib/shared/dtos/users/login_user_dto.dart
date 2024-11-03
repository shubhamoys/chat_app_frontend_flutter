// login_user_dto.dart
class LoginUserDTO {
  final String email;

  final String password;

  LoginUserDTO({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
