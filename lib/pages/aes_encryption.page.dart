import 'package:encrypt/encrypt.dart' as enc;
import 'package:flutter/material.dart';

class AesEncryption extends StatefulWidget {
  static const String ROUTE_NAME = 'AES_ROUTE';

  @override
  _AesEncryptionState createState() => _AesEncryptionState();

  final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
}

class _AesEncryptionState extends State<AesEncryption> {
  late final enc.Key aesKey;
  late final iv;
  late final encrypter;
  late final encrypted;
  late final decrypted;

  @override
  void initState() {
    super.initState();
    aesKey = enc.Key.fromLength(32);
    iv = enc.IV.fromLength(16);
    encrypter = enc.Encrypter(enc.AES(aesKey));

    encrypted = encrypter.encrypt(widget.plainText, iv: iv);
    decrypted = encrypter.decrypt(encrypted, iv: iv);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using AES Symmetric Key Encryption/Decryption '),
      ),
      body: Column(
        children: [
          Text('Plan Text: ${widget.plainText}'),
          Text('decrypted: $decrypted'),
          Text('encrypted.bytes: ${encrypted.bytes}'),
          Text('encrypted.base16: ${encrypted.base16}'),
          Text('encrypted.base64: ${encrypted.base64}'),
        ],
      ),
    );
  }
}
