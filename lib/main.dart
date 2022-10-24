import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selfcheckoutapp/firebase_options.dart';
import 'package:selfcheckoutapp/screens/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Stripe.publishableKey =
  //     'pk_test_51IfMt7FnrKt7w8UFFUjOLYAsZINU5EuE9Qtst7zX2PEGhk5dAharCJQeFH0SdVuozRGQF4JgmfGtyqyfbuuKIAJO0028dxZ7CC';
  // Stripe.merchantIdentifier = 'Test';
  // Stripe.urlScheme = 'flutterstripe';
  // await Stripe.instance.applySettings();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(
        primaryColor: Color(0xff1faa00),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
      ),
      home: LandingPage(),
    );
  }
}
