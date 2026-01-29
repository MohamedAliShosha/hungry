import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hungry_app/features/splash/presentation/views/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const Hungry());
}

class Hungry extends StatelessWidget {
  const Hungry({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
