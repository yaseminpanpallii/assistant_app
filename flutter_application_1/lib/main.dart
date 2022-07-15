import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/introduction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {SystemChrome.setSystemUIOverlayStyle(  const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp( 
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
     
      ),
      home: const IntroductionScreens( ),
    );
  }
}

 