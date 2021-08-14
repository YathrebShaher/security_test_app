import 'package:flutter/material.dart';
import 'package:security_test_app/pages/aes_encryption.page.dart';
import 'package:security_test_app/pages/home.page.dart';
import 'package:security_test_app/pages/persist_key.page.dart';
import 'package:security_test_app/pages/ssl_pinning.page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question App',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.white30,
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        Home.ROUTE_NAME: (context) => Home(),
        SSLPinningPage.ROUTE_NAME: (context) => SSLPinningPage(),
        AesEncryption.ROUTE_NAME: (context) => AesEncryption(),
        PersistKeys.ROUTE_NAME: (context) => PersistKeys(),
      },
      initialRoute: Home.ROUTE_NAME,
      debugShowCheckedModeBanner: false,
    );
  }
}
