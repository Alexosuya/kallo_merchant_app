import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kallo_merchant_app/screens/intro_screens/get_started.dart';
import 'package:kallo_merchant_app/screens/main_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app-localizations.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;
  runApp(MyApp(isFirstLaunch: isFirstLaunch,));
}

class MyApp extends StatelessWidget {
  final bool isFirstLaunch;
  const MyApp({super.key, required this.isFirstLaunch});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor:Colors.transparent,
            systemNavigationBarColor: Colors.transparent
        )
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          ...GlobalMaterialLocalizations.delegates,
          GlobalWidgetsLocalizations.delegate,
          CountryLocalizations.delegate,
        ],
      home: isFirstLaunch ? const GetStarted():const MainHome()
    );
  }
}

