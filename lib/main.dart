import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traveller/provider/favor.dart';
import 'package:traveller/view/splash.dart';
void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>TripProvider()),
      ],child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}

