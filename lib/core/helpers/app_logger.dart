import 'package:logger/logger.dart';

class AppLogger {
  late final Logger _logger;

  AppLogger({
    bool enableLogging = true,
    Level minimumLogLevel = Level.debug,
    LogOutput? customOutput,
  }) {
    _logger = Logger(
      filter: ProductionFilter(), // Use DevelopmentFilter for dev mode
      printer: PrettyPrinter(
        methodCount: 2, // Number of stack trace levels to display
        errorMethodCount: 5, // Stack trace levels for errors
        lineLength: 80, // Console line width
        colors: true, // Enable colorful output
        printEmojis: true, // Include emojis in the output
        dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart, // Time format
      ),
      output: enableLogging ? (customOutput ?? ConsoleOutput()) : null,
      level: enableLogging ? minimumLogLevel : Level.off,
    );
  }

  // Wrappers for Logger methods

  /// Logs messages at the debug level, typically used for detailed system information.
  void debug(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  /// Logs messages at the info level, typically used for general system information.
  void info(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  /// Logs messages at the warning level, typically used for non-critical issues.
  void warning(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  /// Logs messages at the error level, typically used for critical issues.
  void error(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  /// Logs messages at the verbose level, typically used for detailed system information.
  void verbose(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.t(message, error: error, stackTrace: stackTrace);
  }

  /// Logs messages at the fatal level, typically used for critical issues that cause the application to crash.
  void fatal(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.f(message, error: error, stackTrace: stackTrace);
  }

  /// Logs messages at the wtf level, typically used for critical issues that cause the application to crash.
  void exception(dynamic exception, {StackTrace? stackTrace}) {
    _logger.e("Exception: $exception",
        error: exception, stackTrace: stackTrace);
  }
}
