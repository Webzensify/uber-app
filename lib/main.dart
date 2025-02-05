import 'package:flutter/material.dart';
import 'package:travelo/router.dart';
import 'package:travelo/theme/app_theme.dart';
import 'package:flutter/services.dart' as fs;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  fs.SystemChrome.setEnabledSystemUIMode(
    fs.SystemUiMode.manual,
    overlays: [fs.SystemUiOverlay.bottom, fs.SystemUiOverlay.top],
  );
  fs.SystemChrome.setPreferredOrientations(
    [
      fs.DeviceOrientation.portraitUp,
      fs.DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Travelo',
        theme: appTheme,
        initialRoute: '/',
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
