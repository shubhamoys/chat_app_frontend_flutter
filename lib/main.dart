import 'package:chat_app_frontend_flutter/ui/screens/landing/landing.dart';
import 'package:chat_app_frontend_flutter/ui/screens/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/theme.dart';

void main() {
  // Set system overlay style to make status and navigation bars transparent
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Make the status bar transparent
    systemNavigationBarColor:
        Colors.transparent, // Make the navigation bar transparent
    statusBarIconBrightness:
        Brightness.dark, // Set icon brightness for status bar
    systemNavigationBarIconBrightness:
        Brightness.dark, // Set icon brightness for navigation bar
  ));

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme.copyWith(
        scaffoldBackgroundColor:
            Colors.transparent, // Make scaffold background transparent
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Landing(),
        '/registration': (context) => const Registration(),
      },
    ),
  );
}
