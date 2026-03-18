import 'package:shared_preferences/shared_preferences.dart';

class TLocalStorage {

  /// --------------------------------------------
  /// Singleton Setup
  /// --------------------------------------------

  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  SharedPreferences? _prefs;

  Future<SharedPreferences> _prefsInstance() async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  /// Save Data
  Future<void> saveData<T>(String key, T value) async {
    final prefs = await _prefsInstance();
    switch (value) {
      case final String v:
        await prefs.setString(key, v);
      case final int v:
        await prefs.setInt(key, v);
      case final double v:
        await prefs.setDouble(key, v);
      case final bool v:
        await prefs.setBool(key, v);
      case final List<String> v:
        await prefs.setStringList(key, v);
      default:
        await prefs.setString(key, value.toString());
    }
  }

  /// Read Data
  T? readData<T>(String key) {
    final prefs = _prefs;
    if (prefs == null) return null;
    return prefs.get(key) as T?;
  }

  /// Remove Data
  Future<void> removeData(String key) async {
    final prefs = await _prefsInstance();
    await prefs.remove(key);
  }

  /// Clear All Storage
  Future<void> clearAll() async {
    final prefs = await _prefsInstance();
    await prefs.clear();
  }
}