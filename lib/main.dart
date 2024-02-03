import 'package:banking/repo/colors.dart';
import 'package:banking/views/add_card_screen.dart';
import 'package:banking/views/home_screen.dart';
import 'package:banking/views/login_screen.dart';
import 'package:banking/views/sign_up_screen.dart';
import 'package:banking/views/account_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
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
      supportedLocales: [
        Locale("af"),
        Locale("am"),
        Locale("ar"),
        Locale("az"),
        Locale("be"),
        Locale("bg"),
        Locale("bn"),
        Locale("bs"),
        Locale("ca"),
        Locale("cs"),
        Locale("da"),
        Locale("de"),
        Locale("el"),
        Locale("en"),
        Locale("es"),
        Locale("et"),
        Locale("fa"),
        Locale("fi"),
        Locale("fr"),
        Locale("gl"),
        Locale("ha"),
        Locale("he"),
        Locale("hi"),
        Locale("hr"),
        Locale("hu"),
        Locale("hy"),
        Locale("id"),
        Locale("is"),
        Locale("it"),
        Locale("ja"),
        Locale("ka"),
        Locale("kk"),
        Locale("km"),
        Locale("ko"),
        Locale("ku"),
        Locale("ky"),
        Locale("lt"),
        Locale("lv"),
        Locale("mk"),
        Locale("ml"),
        Locale("mn"),
        Locale("ms"),
        Locale("nb"),
        Locale("nl"),
        Locale("nn"),
        Locale("no"),
        Locale("pl"),
        Locale("ps"),
        Locale("pt"),
        Locale("ro"),
        Locale("ru"),
        Locale("sd"),
        Locale("sk"),
        Locale("sl"),
        Locale("so"),
        Locale("sq"),
        Locale("sr"),
        Locale("sv"),
        Locale("ta"),
        Locale("tg"),
        Locale("th"),
        Locale("tk"),
        Locale("tr"),
        Locale("tt"),
        Locale("uk"),
        Locale("ug"),
        Locale("ur"),
        Locale("uz"),
        Locale("vi"),
        Locale("zh")
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],
      title: 'Banking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.iconColor),
          backgroundColor: AppColors.mainColor
        ),
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
      home: AddCardScreen(),
    );
  }
}

