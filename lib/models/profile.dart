class Profile {
  final String id;
  final DateTime updatedAt;
  final String? username;
  final String? fullName;
  final String? avatarUrl;
  final double? height;
  final double? weight;
  final DateTime? birthDate;
  final String? gender;
  final String? fitnessLevel;
  final List<String>? fitnessGoals;
  final List<String>? preferredWorkoutDays;
  final double? currentWeight;
  final double? targetWeight;
  final double? bodyFatPercentage;
  final String measurementUnit;
  final bool notificationsEnabled;

  Profile({
    required this.id,
    required this.updatedAt,
    this.username,
    this.fullName,
    this.avatarUrl,
    this.height,
    this.weight,
    this.birthDate,
    this.gender,
    this.fitnessLevel,
    this.fitnessGoals,
    this.preferredWorkoutDays,
    this.currentWeight,
    this.targetWeight,
    this.bodyFatPercentage,
    this.measurementUnit = 'metric',
    this.notificationsEnabled = true,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'],
      updatedAt: DateTime.parse(json['updated_at']),
      username: json['username'],
      fullName: json['full_name'],
      avatarUrl: json['avatar_url'],
      height: json['height']?.toDouble(),
      weight: json['weight']?.toDouble(),
      birthDate: json['birth_date'] != null ? DateTime.parse(json['birth_date']) : null,
      gender: json['gender'],
      fitnessLevel: json['fitness_level'],
      fitnessGoals: json['fitness_goals'] != null ? List<String>.from(json['fitness_goals']) : null,
      preferredWorkoutDays: json['preferred_workout_days'] != null ? List<String>.from(json['preferred_workout_days']) : null,
      currentWeight: json['current_weight']?.toDouble(),
      targetWeight: json['target_weight']?.toDouble(),
      bodyFatPercentage: json['body_fat_percentage']?.toDouble(),
      measurementUnit: json['measurement_unit'] ?? 'metric',
      notificationsEnabled: json['notifications_enabled'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'updated_at': updatedAt.toIso8601String(),
      'username': username,
      'full_name': fullName,
      'avatar_url': avatarUrl,
      'height': height,
      'weight': weight,
      'birth_date': birthDate?.toIso8601String(),
      'gender': gender,
      'fitness_level': fitnessLevel,
      'fitness_goals': fitnessGoals,
      'preferred_workout_days': preferredWorkoutDays,
      'current_weight': currentWeight,
      'target_weight': targetWeight,
      'body_fat_percentage': bodyFatPercentage,
      'measurement_unit': measurementUnit,
      'notifications_enabled': notificationsEnabled,
    };
  }
}