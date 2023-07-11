import 'package:cloud_firestore/cloud_firestore.dart';

class KUser {
  String firstName;
  String lastName;
  final String username;
  final String password;
  final String email;
  final String fcmToken;
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
    required this.fcmToken,
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
      'fcmToken': fcmToken,
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
      fcmToken: map['fcmToken'] ?? 'No Token',
      email: map['email'],
      dateOfBirth: map['dateOfBirth'] != null
          ? (map['dateOfBirth'] as Timestamp).toDate()
          : null,
      grade: map['grade'],
      gender: map['gender'],
      favSubject: map['favSubject'],
      interests: map['interests'] != null
          ? List<String>.from(map['interests'])
          : null, // check if map['interests'] is not null before constructing List
      level: map['level'],
      totalPoints: map['totalPoints'],
      subjectPoints: map['subjectPoints'] != null
          ? Map<String, int>.from(map['subjectPoints'])
          : null,
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
