class Session {
  final String id;
  final List<String> playerUserIds;
  final String gameId;
  final DateTime startTime;
  final DateTime endTime;
  final Map<String, int> playerScores;

  Session({
    required this.id,
    required this.playerUserIds,
    required this.gameId,
    required this.startTime,
    required this.endTime,
    required this.playerScores,
  });

  // Method to convert Session object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'playerUserIds': playerUserIds,
      'gameId': gameId,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime.toIso8601String(),
      'playerScores': playerScores,
    };
  }

  // Method to convert map into Session object
  static Session fromMap(Map<String, dynamic> map) {
    return Session(
      id: map['id'],
      playerUserIds: List<String>.from(map['playerUserIds']),
      gameId: map['gameId'],
      startTime: DateTime.parse(map['startTime']),
      endTime: DateTime.parse(map['endTime']),
      playerScores: Map<String, int>.from(map['playerScores']),
    );
  }

  // Other methods related to Session

  // For example, to calculate the duration of a session
  // Duration getDuration() {...}

  // Other methods based on your application requirements
}
