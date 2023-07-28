import './hondooye_fun_logger_factory.dart';

class FunLogger {
  factory FunLogger.heart(dynamic message) = HeartLogger;

  factory FunLogger.robot(dynamic message) = RobotLogger;

  factory FunLogger.poop(dynamic message) = PoopLogger;
}
