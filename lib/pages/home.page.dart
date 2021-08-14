import 'package:flutter/material.dart';
import 'package:security_test_app/pages/aes_encryption.page.dart';
import 'package:security_test_app/pages/persist_key.page.dart';
import 'package:security_test_app/pages/ssl_pinning.page.dart';

class Home extends StatelessWidget {
  static const String ROUTE_NAME = 'ADD_QUESTION_ROUTE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check some security topics'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, SSLPinningPage.ROUTE_NAME),
            child: Text(
              'SSL Pinning Test',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, AesEncryption.ROUTE_NAME),
            child: Text(
              'AES Encryption',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, PersistKeys.ROUTE_NAME),
            child: Text(
              'Persist Keys',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}
