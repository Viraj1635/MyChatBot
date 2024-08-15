import 'package:chatvp/comp/themeNotifier.dart';
import 'package:chatvp/comp/themes.dart';
import 'package:chatvp/home.dart';
import 'package:chatvp/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  await dotenv.load(fileName: ".env");
  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode= ref.watch(themeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode ,
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
    );
  }
}