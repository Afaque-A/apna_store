import 'package:apna_store/features/screens/onbording/onbording_screen.dart';
import 'package:apna_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: OnbordingScreen(),
      //
      // AnimatedSplashScreen(
      //   splash: Image.asset('assets/logo/black_app_logo.png'), // Your logo
      //   nextScreen: const MainScreen(), // The screen to show after splash
      //   splashTransition: SplashTransition.fadeTransition,
      //   duration: 3000, // Duration in milliseconds
      //   backgroundColor: Colors.white, // Background color
      // ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apna Store')),
      body: const Center(child: Text('Welcome to Apna Store!')),
    );
  }
}
