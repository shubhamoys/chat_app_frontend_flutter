class Email {
  final String value;

  final String? otp; // Optional field

  final bool verified;

  Email({
    required this.value,
    this.otp,
    required this.verified,
  });

  factory Email.fromJson(Map<String, dynamic> json) {
    return Email(
      value: json['value'] as String, // Ensure value is a String

      otp: json['otp'] as String?, // Ensure otp is a String or null

      verified: json['verified'] is bool
          ? json['verified']
          : false, // Ensure verified is a bool
    );
  }
}
