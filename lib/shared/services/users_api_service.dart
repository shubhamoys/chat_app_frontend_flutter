import 'dart:convert';
import 'package:chat_app_frontend_flutter/shared/dtos/users/register_user_dto.dart';
import 'package:http/http.dart' as http;
import 'package:chat_app_frontend_flutter/shared/models/users/user.dart';
import '../dtos/users/login_user_dto.dart'; // Import the DTO
import '../../constants/routes.dart'; // Import the routes file

class UsersApiService {
  Future<User?> registerUser(RegisterUserDTO registerUserDTO) async {
    final registerUserUrl =
        ApiEndpoints.BASE_URL + ApiEndpoints.ENDPOINTS['USERS']!['REGISTER']!;

    final response = await http.post(
      Uri.parse(registerUserUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(registerUserDTO.toJson()), // Use the DTO to get JSON
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      return User.fromJson(jsonResponse); // Parse the user from the response
    } else {
      return null;
    }
  }

  Future<User?> loginUser(LoginUserDTO loginUserDTO) async {
    final loginUserUrl =
        ApiEndpoints.BASE_URL + ApiEndpoints.ENDPOINTS['USERS']!['LOGIN']!;

    final response = await http.post(
      Uri.parse(loginUserUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(loginUserDTO.toJson()), // Use the DTO to get JSON
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      return User.fromJson(jsonResponse); // Parse the user from the response
    } else {
      return null;
    }
  }
}
