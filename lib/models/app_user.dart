class AppUser {
  const AppUser({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.photoUrl,
    required this.createdAtMillis,
  });

  final String uid;
  final String email;
  final String displayName;
  final String photoUrl;
  final int createdAtMillis;

  Map<String, Object?> toJson() => {
        'uid': uid,
        'email': email,
        'displayName': displayName,
        'photoUrl': photoUrl,
        'createdAtMillis': createdAtMillis,
      };

  static AppUser fromJson(Map<String, Object?> json) => AppUser(
        uid: json['uid'] as String? ?? '',
        email: json['email'] as String? ?? '',
        displayName: json['displayName'] as String? ?? '',
        photoUrl: json['photoUrl'] as String? ?? '',
        createdAtMillis: (json['createdAtMillis'] as num?)?.toInt() ?? 0,
      );
}

