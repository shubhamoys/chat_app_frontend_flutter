class Password {
  final String hash;

  final String plain;

  final String? otp; // Optional field

  final bool reset;

  Password({
    required this.hash,
    required this.plain,
    this.otp,
    required this.reset,
  });

  factory Password.fromJson(Map<String, dynamic> json) {
    return Password(
      hash: json['hash'] as String, // Ensure hash is a String

      plain: json['plain'] as String, // Ensure plain is a String

      otp: json['otp'] as String?, // Ensure otp is a String or null

      reset: json['reset'] is bool
          ? json['reset']
          : false, // Ensure reset is a bool
    );
  }
}
