import 'package:chat_app_frontend_flutter/shared/models/tokens/token.dart';
import 'package:chat_app_frontend_flutter/shared/models/users/email.dart';
import 'package:chat_app_frontend_flutter/shared/models/users/password.dart';

class User {
  final String userId;

  final String name;

  final String? bio; // Optional field

  final Email email;

  final String? gender; // Optional field

  final Password? password; // Make password optional

  final bool wasNew; // Default value can be set in the constructor

  final String role;

  final List<Token>? tokens; // Virtual field, can be null initially

  final DateTime createdAt; // Use DateTime for timestamps

  final DateTime updatedAt; // Use DateTime for timestamps

  User({
    required this.userId,
    required this.name,
    this.bio,
    required this.email,
    this.gender,
    this.password, // Make password optional
    this.wasNew = true, // Default value
    required this.role,
    this.tokens, // Virtual field, can be null initially
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'] as String, // Ensure userId is a String

      name: json['name'] as String, // Ensure name is a String

      email: Email.fromJson(json['email']), // Parse email

      role: json['role'] as String, // Ensure role is a String

      tokens: (json['tokens'] as List?)
              ?.map((tokenJson) => Token.fromJson(tokenJson))
              .toList() ??
          [], // Handle null or empty list

      password: json.containsKey('password')
          ? Password.fromJson(json['password'])
          : null, // Check for password in JSON

      createdAt: DateTime.fromMillisecondsSinceEpoch(
          json['timestamp']['createdAt'] as int), // Ensure createdAt is an int

      updatedAt: DateTime.fromMillisecondsSinceEpoch(
          json['timestamp']['updatedAt'] as int), // Ensure updatedAt is an int
    );
  }
}
