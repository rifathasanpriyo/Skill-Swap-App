import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package
import 'package:google_fonts/google_fonts.dart';
import 'package:sd_skill_swap/all_cheat_sheat/cheat_sheet.dart';
import 'package:sd_skill_swap/authentication/otp%20send/view/otp_fillup_view.dart';
import 'package:sd_skill_swap/authentication/otp%20send/view/otp_send_view.dart';
import 'package:sd_skill_swap/home%20screen/view/home_screen_view.dart';
import 'package:sd_skill_swap/login/view/login_view.dart';
import 'package:sd_skill_swap/password_Reset/view/password_reset_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Use GetMaterialApp instead of MaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(), // Use Poppins throughout
        useMaterial3: true,
      ),
      home: CheatSheet(),
    );
  }
}
