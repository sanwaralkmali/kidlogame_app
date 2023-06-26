class Topic {
  final String id;
  final String title;
  final String subjectId;

  Topic({
    required this.id,
    required this.title,
    required this.subjectId,
  });

  // Method to convert Topic object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subjectId': subjectId,
    };
  }

  // Method to convert map into Topic object
  static Topic fromMap(Map<String, dynamic> map) {
    return Topic(
      id: map['id'],
      title: map['title'],
      subjectId: map['subjectId'],
    );
  }

  // Other methods related to Topic

  // For example, to get a list of questions associated with this topic
  // Future<List<Question>> getQuestions() {...}

  // Another method could be to add a new question to this topic
  // void addQuestion(Question question) {...}

  // Other methods based on your application requirements
}
