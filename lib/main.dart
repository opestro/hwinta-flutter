import 'dart:convert';

// import 'package:dart_eval/dart_eval.dart';
// import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:feeef_marchant/src/orders/list/bloc/orders_bloc.dart';
import 'package:feeef_marchant/src/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:flutter_eval/flutter_eval.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:lib/lib.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'feeef/feeef.dart';
import 'feeef/orders/models/order.dart';
import 'firebase_options.dart';
import 'src/app.dart';
import 'src/auth/auth_bloc.dart';
import 'src/settings/bloc/settings_bloc.dart';
import 'src/stores/bloc/marchent_stores_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

final Feeef ff = Feeef.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platforms.isWindows || Platforms.isLinux || Platforms.isMacOS) {
    Window.initialize().then((e) async {
      await Window.setEffect(
        effect: WindowEffect.acrylic,
        color: Colors.transparent,
      );
      await Window.makeTitlebarTransparent();
      await Window.enableFullSizeContentView();
    });
  }

  usePathUrlStrategy();
  await initFirebaseServices();
  LocaleSettings.useDeviceLocale(); // and this
  // Feeef.instance.init(baseUrl: "http://localhost:3333/api/v1");
  await ff.init(baseUrl: true && kDebugMode ? (Platforms.isAndroid ? "http://10.0.2.2:3333/api/v1" : "http://localhost:3333/api/v1") : "https://apis.feeef.net/api/v1");

  runApp(
    TranslationProvider(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
          BlocProvider<MarchentStoresBloc>(create: (context) => MarchentStoresBloc()),
          BlocProvider<SettingsBloc>(create: (context) => SettingsBloc(locale: LocaleSettings.currentLocale.flutterLocale)),
        ],
        child: const App(),
      ),
    ),
  );
}

/// Initialize Firebase services
///
/// This function initializes Firebase services and sets up the FirebaseMessaging
/// instance to handle incoming messages for all platforms.
Future<void> initFirebaseServices() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    final Notifications notifications = Notifications(messaging: messaging);
    notifications.init();
  } catch (e) {
    print("Error initializing Firebase services: $e");
  }
}

class Notifications {
  Notifications({required this.messaging});
  final FirebaseMessaging messaging;

  Future<void> init() async {
    await _requestPermission();
    await _printToken();
    await _onMessageOpenedApp();
    await _onAppLaunch();
    await _onMessage();
    await _onBackgroundMessage();
  }

  Future<void> _requestPermission() async {
    await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  Future<void> _printToken() async {
    await messaging.getToken().then((token) {
      print("Token: $token");
    });
  }

  static Future<void> _messagingHandler(RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
    if (message.data["action"] != null) {
      String path = message.data["action"];
      router.go(path);
      if (message.data["type"] == "order.sent" && message.data["data"] != null) {
        try {
          var order = Order.fromJson(jsonDecode(message.data["data"] as String));
          orderStreamController.add(order);
        } catch (e) {
          print(e);
        }
      }
    }
  }

  // handle app launch after being terminated
  Future<void> _onAppLaunch() async {
    await FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) _messagingHandler(message);
    });
  }

  // handle app messages when app is in the foreground
  Future<void> _onMessageOpenedApp() async {
    FirebaseMessaging.onMessageOpenedApp.listen(_messagingHandler);
  }

  Future<void> _onMessage() async {
    FirebaseMessaging.onMessage.listen(_messagingHandler);
  }

  Future<void> _onBackgroundMessage() async {
    FirebaseMessaging.onBackgroundMessage(_messagingHandler);
  }
  // void _onTokenRefresh() {
  //   throw UnimplementedError();
  // }
  // void _onAppForegroundMessage() {
  //   FirebaseMessaging.onMessage.listen(_messagingHandler);
  // }
  // void _onAppBackgroundMessage() {
  //   FirebaseMessaging.onBackgroundMessage(_messagingHandler);
  // }
}

// void main0() {
//   // runApp(const Demo());
// }

// class Demo extends StatefulWidget {
//   const Demo({super.key});

//   @override
//   State<Demo> createState() => _DemoState();
// }

// $Value? go (Runtime runtime, $Value? value, List<$Value?> list) {
//   launchUrlString("https://google.com");
// }
// class _DemoState extends State<Demo> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: CompilerWidget(
//         library: 'package:example/main.dart',
//         function: 'MyWidget.',
//         args: [
//           $Closure(go)
//         ],
//         packages: {
//           'example': {
//             'main.dart': '''
//       import 'package:flutter/material.dart';
      
//       class MyWidget extends StatelessWidget {
//         MyWidget();
      
//         @override
//         Widget build(BuildContext context) {
//           return Scaffold(
//         body: Column(children: [
//                 Container(
//                   color: Colors.red,
//                   child: Text('The name is ')
//                 ),
//                 IconButton(
//                 icon: Icon(Icons.add),
//                 onPressed: null,
//                 ),
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//             )
//           );
//         }
//       }''',
//           },
//         },
//       ),
//     );
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(child: TextFormField()),
//           Expanded(
//             child: TextFormField(),
//           ),
//         ],
//       ),
//     );
//   }
// }
