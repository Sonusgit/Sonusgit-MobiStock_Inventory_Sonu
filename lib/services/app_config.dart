import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  // Private constructor
  AppConfig._();
  
  // Singleton instance
  static final AppConfig _instance = AppConfig._();
  static AppConfig get instance => _instance;
  
  // Environment variables getters
  String get baseUrl => dotenv.env['BASE_URL'] ?? 'https://backend-production-33c0.up.railway.app';
  bool get isDebugMode => dotenv.env['DEBUG_MODE']?.toLowerCase() == 'true';
  String get appName => dotenv.env['MobiStock'] ?? 'Flutter App';
  

  
  // Specific endpoints
  String get loginEndpoint => '$baseUrl/login/jwt';
  String get registerEndpoint => '$baseUrl/auth/register';
  String get profileEndpoint => '$baseUrl/user/profile';
  String get logoutEndpoint => '$baseUrl/auth/logout';
  
  // Debug print method
  void printConfig() {
    if (isDebugMode) {
      print('=== APP CONFIG ===');
      print('Base URL: $baseUrl');
      print('API Version: "1');
      print('Debug Mode: $isDebugMode');
      print('App Name: $appName');
      print('==================');
    }
  }
}