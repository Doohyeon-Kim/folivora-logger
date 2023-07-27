import 'package:http/http.dart' as http;

import './hondooye_logger_factory.dart';

class Logger {
  factory Logger(dynamic message) = DefaultLogger;

  factory Logger.debug(dynamic message) = DebuggingLogger;

  factory Logger.errorMessage(dynamic errorMessage) = ErrorMessageLogger;

  factory Logger.exception(Exception exception, {int? errorMethodCount}) =
      ExceptionLogger;

  factory Logger.error(Error error, {int? methodCount}) = ErrorLogger;

  factory Logger.log(dynamic message) = LogLogger;

  factory Logger.info(dynamic message) = InformationLogger;

  factory Logger.warning(dynamic message) = WarningLogger;

  factory Logger.build(dynamic message) = BuildLogger;

  factory Logger.httpRequest({required http.Request httpRequest}) =
      HttpRequestLogger;

  factory Logger.multipartRequest(
          {required http.MultipartRequest multipartRequest}) =
      MultipartRequestLogger;

  factory Logger.httpResponse(
      {required http.Response httpResponse,
      bool printHeaders}) = HttpResponseLogger;

  factory Logger.htmlRequest(
      {required String method,
      required Map<String, String> headers,
      required Uri uri,
      String? body,
      int? methodCount}) = HtmlRequestLogger;

  factory Logger.htmlResponse(
      {Map<String, String>? printHeaders,
      required int statusCode,
      required String body,
      int? methodCount}) = HtmlResponseLogger;
}
