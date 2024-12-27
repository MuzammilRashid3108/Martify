import 'package:flutter/foundation.dart';

class MLoggerHelper {
  // Logger levels
  static void logInfo(String message) {
    if (kDebugMode) {
      debugPrint('INFO: $message');
    }
  }

  static void logDebug(String message) {
    if (kDebugMode) {
      debugPrint('DEBUG: $message');
    }
  }

  static void logError(String message, [Object? error, StackTrace? stackTrace]) {
    if (kDebugMode) {
      debugPrint('ERROR: $message');
      if (error != null) {
        debugPrint('Error: $error');
      }
      if (stackTrace != null) {
        debugPrint('StackTrace: $stackTrace');
      }
    }
  }

  static void logWarning(String message) {
    if (kDebugMode) {
      debugPrint('WARNING: $message');
    }
  }
}
