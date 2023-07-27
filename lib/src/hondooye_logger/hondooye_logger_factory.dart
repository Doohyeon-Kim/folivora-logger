import 'package:http/http.dart' as http;

import '../hondooye_logger_util.dart';
import 'hondooye_logger.dart';

class DefaultLogger implements Logger {
  DefaultLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.log, message);
  }
}

class DebuggingLogger implements Logger {
  DebuggingLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.debug, message);
  }
}

class ErrorMessageLogger implements Logger {
  ErrorMessageLogger(dynamic message, {int? methodCount}) {
    LoggerUtil.createLogger(LoggerUtil.emojis.error, message);
  }
}

class ExceptionLogger implements Logger {
  ExceptionLogger(Exception exception, {int? errorMethodCount}) {
    LoggerUtil.createLogger(LoggerUtil.emojis.exception, exception,
        methodCount: errorMethodCount ??= 10);
  }
}

class ErrorLogger implements Logger {
  ErrorLogger(Error error, {int? methodCount}) {
    LoggerUtil.createLogger(LoggerUtil.emojis.error, error,
        methodCount: methodCount);
  }
}

class WarningLogger implements Logger {
  WarningLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.warning, message);
  }
}

class LogLogger implements Logger {
  LogLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.robot, message);
  }
}

class InformationLogger implements Logger {
  InformationLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.info, message);
  }
}

class BuildLogger implements Logger {
  BuildLogger(dynamic message) {
    LoggerUtil.createLogger(LoggerUtil.emojis.build, message);
  }
}

class HttpRequestLogger implements Logger {
  HttpRequestLogger({required http.Request httpRequest}) {
    String logMessage =
        "Http Request ${DateTime.now()}\nURI: ${httpRequest.url}\nMethod: ${httpRequest.method}\nheaders: ${httpRequest.headers}\nBody: ${httpRequest.body}";
    LoggerUtil.createLogger(LoggerUtil.emojis.robot, logMessage);
  }
}

class MultipartRequestLogger implements Logger {
  MultipartRequestLogger({required http.MultipartRequest multipartRequest}) {
    String logMessage =
        "Http Request ${DateTime.now()}\nURI: ${multipartRequest.url}\nMethod: ${multipartRequest.method}\nheaders: ${multipartRequest.headers}\nfiles: ${multipartRequest.files}";
    LoggerUtil.createLogger(LoggerUtil.emojis.robot, logMessage);
  }
}

class HttpResponseLogger implements Logger {
  HttpResponseLogger(
      {required http.Response httpResponse, bool printHeaders = false}) {
    late String logMessage;
    printHeaders == false
        ? logMessage =
            "Http Response ${DateTime.now()}\nStatus Code: ${httpResponse.statusCode}\nBody: ${httpResponse.body}"
        : logMessage =
            "Http Response ${DateTime.now()}\nStatus Code: ${httpResponse.statusCode}\nHeaders ${httpResponse.headers}\nBody: ${httpResponse.body}";
    LoggerUtil.createLogger(LoggerUtil.emojis.robot, logMessage);
  }
}

class HtmlRequestLogger implements Logger {
  HtmlRequestLogger(
      {required String method,
      required Map<String, String> headers,
      required Uri uri,
      String? body,
      int? methodCount}) {
    late String logMessage =
        "Request ${DateTime.now()}\nURI: $uri\nMethod: $method\nheaders: $headers\nBody: $body";
    LoggerUtil.createLogger(LoggerUtil.emojis.robot, logMessage);
  }
}

class HtmlResponseLogger implements Logger {
  HtmlResponseLogger(
      {Map<String, String>? printHeaders,
      required int statusCode,
      required String body,
      int? methodCount}) {
    late String logMessage;
    printHeaders == null
        ? logMessage =
            "${DateTime.now()}\nResponse\nStatus Code: $statusCode\nBody: $body"
        : logMessage =
            "${DateTime.now()}\nResponse\nStatus Code: $statusCode\nHeaders $printHeaders\nBody: $body";
    LoggerUtil.createLogger(LoggerUtil.emojis.robot, logMessage);
  }
}
