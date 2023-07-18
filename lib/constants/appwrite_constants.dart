class AppwriteConstants {
  static const String databaseId = '649aa9a4830ff6f2bc19';
  static const String projectId = '649aa91a5a5c316b43d0';
  static const String endPoint = 'http://10.0.6.18:80/v1';

  static const String usersCollection = '643a3c481799f569037c';
  static const String tweetsCollection = '64329279c4e1e46c41a6';
  static const String notificationsCollection = '643a8d012dd9438a38d6';

  static const String imagesBucket = '6432c010698a86e1c4fd';

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
