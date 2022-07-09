import 'package:amazon_clone/constant/global_variables.dart';
import 'package:amazon_clone/feature/auth/screens/auth_screen.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Global_variables.secondaryColor,
          ),
          scaffoldBackgroundColor: Global_variables.backgroundColor,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
        ),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const AuthScreen());
  }
}
