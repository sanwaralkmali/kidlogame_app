class Subject {
  final String id;
  final String subjectName;

  Subject({
    required this.id,
    required this.subjectName,
  });

  // Method to convert Subject object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'subjectName': subjectName,
    };
  }

  // Method to convert map into Subject object
  static Subject fromMap(Map<String, dynamic> map) {
    return Subject(
      id: map['id'],
      subjectName: map['subjectName'],
    );
  }

  // Other methods related to Subject

  // For example, to get a list of topics associated with this subject
  // Future<List<Topic>> getTopics() {...}

  // Another method could be to add a new topic to this subject
  // void addTopic(Topic topic) {...}

  // Other methods based on your application requirements
}
