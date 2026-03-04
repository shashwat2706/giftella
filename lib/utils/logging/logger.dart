import 'package:logger/logger.dart';

class TLoggerHelper {

  /// Logger Instance
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // Customize log level as needed
    level: Level.debug,
  );

  /// Debug Log
  static void debug(String message) {
    _logger.d(message);
  }

  /// Info Log
  static void info(String message) {
    _logger.i(message);
  }

  /// Warning Log
  static void warning(String message) {
    _logger.w(message);
  }

  /// Error Log
  static void error(String message, [dynamic error]) {
    _logger.e(
      message,
      error: error,
      stackTrace: StackTrace.current,
    );
  }
}