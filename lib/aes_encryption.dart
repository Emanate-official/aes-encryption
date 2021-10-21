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
part 'src/generate_passphrase.dart';
part 'src/generate_random_number.dart';
part 'src/generate_random_string.dart';

class AesEncryption {
  /// Encrypts any String to AES Encrypted String
  static String encryptString(String string, String passphrase) => encryptAES(string ,passphrase);
  /// Decrypts any AES Encrypted String back to a String
  static String decryptString(String encryptedString, String passphrase) => decryptAES(encryptedString, passphrase);
  /// Generated a random SHA256 Hash String for use as a Passphrase
  static Future<String> generatePassphrase() async => await generateRandomPassphrase();
}