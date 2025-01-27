import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class MLocalStorage {
  // Keys for storing different types of data
  static const String _isLoggedInKey = 'isLoggedIn';
  static const String _userTokenKey = 'userToken';
  static const String _userDataKey = 'userData';

  // Initialize SharedPreferences
  static final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // Save boolean value to local storage
  static Future<bool> setIsLoggedIn(bool value) async {
    final prefs = await _prefs;
    return prefs.setBool(_isLoggedInKey, value);
  }

  // Get boolean value from local storage
  static Future<bool?> getIsLoggedIn() async {
    final prefs = await _prefs;
    return prefs.getBool(_isLoggedInKey);
  }

  // Save a string value to local storage
  static Future<bool> setUserToken(String value) async {
    final prefs = await _prefs;
    return prefs.setString(_userTokenKey, value);
  }

  // Get string value from local storage
  static Future<String?> getUserToken() async {
    final prefs = await _prefs;
    return prefs.getString(_userTokenKey);
  }

  // Save user data as JSON
  static Future<bool> setUserData(Map<String, dynamic> data) async {
    final prefs = await _prefs;
    return prefs.setString(_userDataKey, jsonEncode(data));
  }

  // Get user data from local storage
  static Future<Map<String, dynamic>?> getUserData() async {
    final prefs = await _prefs;
    String? jsonString = prefs.getString(_userDataKey);
    return jsonDecode(jsonString!);
  }

  // Remove a specific value from local storage
  static Future<bool> remove(String key) async {
    final prefs = await _prefs;
    return prefs.remove(key);
  }

  // Clear all stored data from local storage
  static Future<bool> clear() async {
    final prefs = await _prefs;
    return prefs.clear();
  }
}
