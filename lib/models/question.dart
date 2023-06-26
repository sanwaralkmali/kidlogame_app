class Question {
  final String id;
  final String questionText;
  final List<String> options;
  final String correctAnswer;
  final String difficultyLevel;
  final String topicId;

  Question({
    required this.id,
    required this.questionText,
    required this.options,
    required this.correctAnswer,
    required this.difficultyLevel,
    required this.topicId,
  });

  // Method to convert Question object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'questionText': questionText,
      'options': options,
      'correctAnswer': correctAnswer,
      'difficultyLevel': difficultyLevel,
      'topicId': topicId,
    };
  }

  // Method to convert map into Question object
  static Question fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'],
      questionText: map['questionText'],
      options: List<String>.from(map['options']),
      correctAnswer: map['correctAnswer'],
      difficultyLevel: map['difficultyLevel'],
      topicId: map['topicId'],
    );
  }

  // Other methods related to Question

  // For example, to check if a provided answer is correct
  // bool isCorrect(String answer) {...}

  // Other methods based on your application requirements
}
