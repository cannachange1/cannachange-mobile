import 'dart:async';

import 'package:get_storage/get_storage.dart';

class Preferences {
  Preferences._();

  static const authToken = 'authToken';
  static const firstName = 'firstName';
  static const lastName = 'lastName';
  static const phone = 'phone';
  static const email = 'email';
  static const password = 'password';
  static const biometrics = 'biometrics';
}

class StorageHelper {
  static final storage = GetStorage();

  static Future<String> getUserName() async {
    return await storage.read(Preferences.firstName);
  }

  static Future<String> getUserSurname() async {
    return await storage.read(Preferences.lastName);
  }

  static Future<String?> getToken() async {
    return storage.read(Preferences.authToken);
  }

  static Future<String> getEmail() async {
    return await storage.read(Preferences.email);
  }

  static Future<String> getPhone() async {
    return await storage.read(Preferences.phone);
  }

  static Future<bool> getBiometrics() async {
    return await storage.read(Preferences.biometrics) ?? false;
  }

  static Future<void> setBiometrics(bool biometrics) async =>
      storage.write(Preferences.biometrics, biometrics);

  static Future<void> setUserName(String firstName) async =>
      storage.write(Preferences.firstName, firstName);

  static Future<void> setUseSurname(String lastName) async =>
      storage.write(Preferences.lastName, lastName);

  static Future<void> setPhoneNumber(String phone) async =>
      storage.write(Preferences.phone, phone);

  static Future<void> setEmail(String email) async =>
      storage.write(Preferences.email, email);

  static Future<void> setToken(String token) async =>
      storage.write(Preferences.authToken, token);

  static Future<void> removeAccessToken() async {
    await storage.remove(Preferences.authToken);
  }

  static Future<void> removeAll() async {
    await storage.erase();
  }
}
