import 'package:bookly_app/CONSTANCE.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/Splash_veiw/presentation/splash_veiw.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}

