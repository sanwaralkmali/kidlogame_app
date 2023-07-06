class KUser {
  String firstName;
  String lastName;
  final String username;
  final String password;
  final String email;
  DateTime? dateOfBirth;
  String? grade;
  String gender;
  String? favSubject;
  List<String>? interests;
  int level;
  int totalPoints;
  Map<String, int>? subjectPoints;

  KUser({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.password,
    required this.email,
    this.dateOfBirth,
    this.grade,
    required this.gender,
    this.favSubject,
    this.interests,
    required this.level,
    required this.totalPoints,
    this.subjectPoints,
  });

  // Method to convert User object into a map
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'password': password,
      'email': email,
      'dateOfBirth': dateOfBirth,
      'grade': grade,
      'gender': gender,
      'favSubject': favSubject,
      'interests': interests,
      'level': level,
      'totalPoints': totalPoints,
      'subjectPoints': subjectPoints,
    };
  }

  // Method to convert map into User object
  static KUser fromMap(Map<String, dynamic> map) {
    return KUser(
      firstName: map['firstName'],
      lastName: map['lastName'],
      username: map['username'],
      password: map['password'],
      email: map['email'],
      dateOfBirth: map['dateOfBirth'],
      grade: map['grade'],
      gender: map['gender'],
      favSubject: map['favSubject'],
      interests: List<String>.from(map['interests']),
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
