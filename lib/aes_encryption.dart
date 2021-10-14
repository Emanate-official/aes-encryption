library aes_encryption;

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:tuple/tuple.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

part 'src/encrypt_aes.dart';
part 'src/decrypt_aes.dart';
part 'src/derive_key_iv.dart';
part 'src/uint8list_from_string.dart';
part 'src/get_random_w_nonzero.dart';

/// A Calculator.
class AesEncryption {
  static String encryptString(String string, String passphrase) => encryptAES(string ,passphrase);
  static String decryptString(String encryptedString, String passphrase) => decryptAES(encryptedString, passphrase);
}