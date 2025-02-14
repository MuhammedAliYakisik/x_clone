import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_clone/app/router.dart';
import 'package:x_clone/app/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(enabled: !kReleaseMode,builder: (context)=>MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    var appRouter = AppRouter();
    return MaterialApp.router(
      title: 'X',
      routerConfig: appRouter.route,
      debugShowCheckedModeBanner: false,
      theme: theme
    );
  }
}

