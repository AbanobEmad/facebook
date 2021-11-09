// @dart=2.9

import 'package:facebook/layout/layout_facebook_mobile/layoutfacebookmobile.dart';
import 'package:facebook/layout/layout_facebook_web/layout_facebook_web_screen.dart';
import 'package:facebook/shared/bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {

  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: kIsWeb ? LayoutFacebookWebScreen() : LayoutFacebookMobile(),
    );
  }
}

