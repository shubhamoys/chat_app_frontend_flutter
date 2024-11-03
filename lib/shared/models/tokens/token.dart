class Token {
  final String tokenId;

  final String userId;

  final String name;

  final double expiry; // Keep as double to allow for Infinity

  final String? description;

  final bool disabled;

  final String hash;

  final DateTime createdAt;

  final DateTime updatedAt;

  Token({
    required this.tokenId,
    required this.userId,
    required this.name,
    required this.expiry,
    this.description,
    required this.disabled,
    required this.hash,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      tokenId: json['tokenId'] as String, // Ensure tokenId is a String

      userId: json['userId'] as String, // Ensure userId is a String

      name: json['name'] as String, // Ensure name is a String

      expiry: json['expiry'] is String && json['expiry'] == 'Infinity'
          ? double.infinity // Handle Infinity as a special case
          : (json['expiry'] is num
              ? json['expiry'].toDouble()
              : 0.0), // Convert to double or default to 0.0

      description: json['description']
          as String?, // Ensure description is a String or null

      disabled: json['disabled'] is bool
          ? json['disabled']
          : false, // Ensure disabled is a bool

      hash: json['hash'] as String, // Ensure hash is a String

      createdAt: DateTime.fromMillisecondsSinceEpoch(
          json['timestamp']['createdAt'] as int), // Ensure createdAt is an int

      updatedAt: DateTime.fromMillisecondsSinceEpoch(
          json['timestamp']['updatedAt'] as int), // Ensure updatedAt is an int
    );
  }
}
