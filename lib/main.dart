import 'package:flutter/material.dart';
import 'package:kilogram/screens/list_post_screen.dart';
import 'package:kilogram/screens/login_screen.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kilogram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/ListPost': (context) => const ListPostScreen()
      },
    );
  }
}
