class KUser {
  final String id;
  final String username;
  final String password;
  final String email;
  DateTime? dateOfBirth;
  String? grade;
  String? subjectsOfInterest;
  String gender;
  int level;
  int totalPoints;
  Map<String, int>? subjectPoints; // SubjectID : Points
  List<String>? interests; // List of LessonIDs

  KUser({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    this.dateOfBirth,
    this.grade,
    this.subjectsOfInterest,
    required this.gender,
    required this.level,
    required this.totalPoints,
    this.subjectPoints,
    this.interests,
  });

  // Method to convert User object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'email': email,
      'grade': grade,
      'subjectsOfInterest': subjectsOfInterest,
      'gender': gender,
      'level': level,
      'totalPoints': totalPoints,
      'subjectPoints': subjectPoints,
      'interests': interests,
    };
  }

  // Method to convert map into User object
  static KUser fromMap(Map<String, dynamic> map) {
    return KUser(
      id: map['id'],
      username: map['username'],
      password: map['password'],
      email: map['email'],
      grade: map['grade'],
      subjectsOfInterest: map['subjectsOfInterest'],
      gender: map['gender'],
      level: map['level'],
      totalPoints: map['totalPoints'],
      subjectPoints: Map<String, int>.from(map['subjectPoints']),
    );
  }

  // Other methods related to User can go here

  // For example, a method to add points to a user
  // void addPoints(int pointsToAdd) {
  //   this.totalPoints += pointsToAdd;
  // }

  // A method to add points to a specific subject
  // void addSubjectPoints(String subjectId, int pointsToAdd) {
  //   this.subjectPoints[subjectId] = (this.subjectPoints[subjectId] ?? 0) + pointsToAdd;
  // }
}
