import '../hondooye_logger_util.dart';
import 'hondooye_fun_logger.dart';

class HeartLogger implements FunLogger {
  HeartLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.heart, message);
  }
}

class PoopLogger implements FunLogger {
  PoopLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.poop, message);
  }
}
