import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserInfo {
  static final _storage = FlutterSecureStorage();
  static const _keyUsername = 'username';

  static Future setUsername(String username) async =>
      await _storage.write(key: _keyUsername, value: username);

  static Future<String> getUsername() async =>
      await _storage.read(key: _keyUsername);
}
