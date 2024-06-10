import 'package:flutter/material.dart';
import 'package:flutter_todo_app/authintication/login.dart';
import 'package:flutter_todo_app/widgets/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
  // Import the MainScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email = prefs.getString('email');
  runApp(MyApp(isLoggedIn: email != null));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({Key? key, required this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: isLoggedIn ? MainScreen() : LoginScreen(),  // Use MainScreen here
    );
  }
}
