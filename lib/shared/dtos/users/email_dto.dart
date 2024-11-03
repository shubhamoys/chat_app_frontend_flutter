// email_dto.dart
class EmailDTO {
  final String value;

  final String? otp; // Optional field

  final bool? verified;

  EmailDTO({
    required this.value,
    this.otp,
    this.verified,
  });

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'otp': otp,
      'verified': verified,
    };
  }
}
