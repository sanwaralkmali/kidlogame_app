class Game {
  final String id;
  final String gameName;
  final String subjectId;
  final String topicId;
  final List<String> questionIds;
  final List<String> playerIds;
  final String gameStatus;
  final String gameType;

  Game({
    required this.id,
    required this.gameName,
    required this.subjectId,
    required this.topicId,
    required this.questionIds,
    required this.playerIds,
    required this.gameStatus,
    required this.gameType,
  });

  // Method to convert Game object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'gameName': gameName,
      'subjectId': subjectId,
      'topicId': topicId,
      'questionIds': questionIds,
      'playerIds': playerIds,
      'gameStatus': gameStatus,
      'gameType': gameType,
    };
  }

  // Method to convert map into Game object
  static Game fromMap(Map<String, dynamic> map) {
    return Game(
      id: map['id'],
      gameName: map['gameName'],
      subjectId: map['subjectId'],
      topicId: map['topicId'],
      questionIds: List<String>.from(map['questionIds']),
      playerIds: List<String>.from(map['playerIds']),
      gameStatus: map['gameStatus'],
      gameType: map['gameType'],
    );
  }

  // Other methods related to Game

  // For example, to check if a game is active
  // bool isActive() {...}

  // Other methods based on your application requirements
}
