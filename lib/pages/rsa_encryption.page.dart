// import 'package:encrypt/encrypt.dart';
// import 'package:encrypt/encrypt_io.dart';
// import 'package:flutter/material.dart';
//
// class AesEncryption extends StatefulWidget {
//   static const String ROUTE_NAME = 'RSA_ROUTE';
//
//   @override
//   _AesEncryptionState createState() => _AesEncryptionState();
//
//   final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
// }
//
// class _AesEncryptionState extends State<AesEncryption> {
//   late final iv;
//   late final encrypter;
//   late final encrypted;
//   late final decrypted;
//
//   @override
//   void initState() async {
//     super.initState();
//     final publicKey = await parseKeyFromFile('test/public.pem');
//     final privKey = await parseKeyFromFile('test/private.pem');
//
//     final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
//     final encrypter = Encrypter(RSA(publicKey: publicKey, privateKey: privKey));
//
//     final encrypted = encrypter.encrypt(plainText);
//     final decrypted = encrypter.decrypt(encrypted);
//
//     print(decrypted);
//     print(encrypted.bytes);
//     print(encrypted.base16);
//     print(encrypted.base64);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Using AES Symmetric Key Encryption/Decryption '),
//       ),
//       body: Column(
//         children: [
//           Text('Plan Text: ${widget.plainText}'),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('Show data'),
//           ),
//           Text('decrypted: $decrypted'),
//           Text('encrypted.bytes: ${encrypted.bytes}'),
//           Text('encrypted.base16: ${encrypted.base16}'),
//           Text('encrypted.base64: ${encrypted.base64}'),
//         ],
//       ),
//     );
//   }
// }
