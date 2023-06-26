class Friend {
  final String friendId;
  final String username;
  final String userId;
  final bool onlineStatus;

  Friend({
    required this.friendId,
    required this.username,
    required this.userId,
    this.onlineStatus = false,
  });

  // Method to convert Friend object into a map
  Map<String, dynamic> toMap() {
    return {
      'id': friendId,
      'username': username,
      'userId': userId,
      'onlineStatus': onlineStatus,
    };
  }

  // Method to convert map into Friend object
  static Friend fromMap(Map<String, dynamic> map) {
    return Friend(
      friendId: map['id'],
      username: map['username'],
      userId: map['userId'],
      onlineStatus: map['onlineStatus'],
    );
  }

  // Other methods related to Friend

  // To check if a friend is online
  bool isOnline() {
    return onlineStatus;
  }

  // To send a message to a friend
  // void sendMessage(String message) {...}

  // Other methods based on your application requirements
}
