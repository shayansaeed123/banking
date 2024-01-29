import 'package:banking/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Banking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyLarge: GoogleFonts.poppins(textStyle: textTheme.bodyLarge),
          bodySmall: GoogleFonts.poppins(textStyle: textTheme.titleSmall),
          bodyMedium: GoogleFonts.poppins(textStyle: textTheme.titleMedium),
          titleLarge: GoogleFonts.poppins(textStyle: textTheme.titleLarge),
          titleMedium: GoogleFonts.poppins(textStyle: textTheme.titleMedium),
          displayLarge: GoogleFonts.poppins(textStyle: textTheme.displayLarge),
          displayMedium: GoogleFonts.poppins(textStyle: textTheme.displayMedium)
        ),
      ),
      home: LoginScreen(),
    );
  }
}

