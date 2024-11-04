import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationsService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  static final FirebaseNotificationsService _instance = FirebaseNotificationsService._internal();

  static FirebaseNotificationsService get instance => _instance;

  FirebaseNotificationsService._internal();

  Future<void> initialize() async {
    // Request permission for receiving notifications
    _firebaseMessaging.requestPermission().then((NotificationSettings settings) async {
      print('User granted permission: ${settings.authorizationStatus}');
      print(await getToken());
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle the received message when the app is in the foreground
      print('Foreground message: $message');
    });
    FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
  }

  static Future<void> onBackgroundMessage(RemoteMessage message) async {
    // Handle the received message when the app is in the foreground
    print('onBackgroundMessage message: $message');
  }

  Future<String?> getToken() async {
    // Get the device token for sending push notifications
    String? token = await _firebaseMessaging.getToken(vapidKey: "BHsemcY1pYepfLiEblnz5khsT5C5WelwzUEA5m8HXrpv_tabCv8-25qBSAk5FEj1yn-j-UIoTLvvMSV89vACgbI");
    return token;
  }

  Future<void> subscribeToTopic(String topic) async {
    // Subscribe to a specific topic for receiving notifications
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    // Unsubscribe from a specific topic
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }

  Future<void> _firebaseMessagingBackgroundHandler(Map<String, dynamic> message) async {
    // Handle the received message when the app is in the background
    print('Background message: $message');
  }
}
