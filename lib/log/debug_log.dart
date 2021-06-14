import 'package:dojin_hub/selection/flavor.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;
import 'package:stack_trace/stack_trace.dart' show Trace, Frame;

class DebugLog {
  DebugLog._();

  static Flavor _flavor = Flavor.Development;
  static bool _initialized = false;
  static final _logger = _DebugLogger();

  static initialize(Flavor flavor) {
    _flavor = flavor;
    _initialized = true;
  }

  ///
  /// D: Debug : 開発中は標準出力。本番は消す。
  /// I: Info  : 開発中は標準出力。本番は情報を飛ばす。
  /// E: Error : 開発中はクラッシュ。本番はエラーログを飛ばす（握り潰し）。
  ///
  /// * * *
  /// stackTrackTraceをtrueにすると、非同期でコールスタックを表示するので、ログの順番が保証されないので、
  /// callStackを確認したいときだけtrueにする
  /// * * *
  static void d(String message, {bool showStackTrace = false}) {
    _checkInitialized();
    switch (_flavor) {
      case Flavor.Development:
        _debug(message, showStackTrace);
        break;
      case Flavor.Release:
        // NO-OP
        break;
    }
  }

  static void i(String message, {bool showStackTrace = false}) {
    _checkInitialized();
    switch (_flavor) {
      case Flavor.Development:
        _info(message, showStackTrace);
        break;
      case Flavor.Release:
        break;
    }
  }

  static void e(dynamic exception) {
    _checkInitialized();
    switch (_flavor) {
      case Flavor.Development:
        _error(exception.toString());
        // FIXME: 初期開発が終わったらthrowにする
        // throw exception;
        break;
      case Flavor.Release:
        break;
    }
  }

  static void _checkInitialized() {
    if (!_initialized) {
      throw AssertionError();
    }
  }

  static void _debug(String message, bool showStackTrace) {
    _logger.debug(message, showStackTrace);
  }

  static void _info(String message, bool showStackTrace) {
    _logger.info(message, showStackTrace);
  }

  static void _error(String message) {
    _logger.error(message, false);
  }
}

///
/// DebbugLoggger class
/// DebugLogクラスから利用される前提で作っているのでPrivate Classにしている
///
/// @See: https://pub.dev/packages/simple_logger
///
enum Level {
  debug,
  info,
  error,
}

class _DebugLogger {
  static final _DebugLogger _instance = _DebugLogger._();

  factory _DebugLogger() => _instance;

  _DebugLogger._();

  void debug(String message, bool showStackTrace) =>
      _log(Level.debug, message, showStackTrace);

  void info(String message, bool showStackTrace) =>
      _log(Level.info, message, showStackTrace);

  void error(String message, bool showStackTrace) =>
      _log(Level.error, message, showStackTrace);

  void _log(Level level, message, bool showStackTrace) {
    String msg;
    if (message is Function) {
      msg = message().toString();
    } else if (message is String) {
      msg = message;
    } else {
      msg = message.toString();
    }

    var time = DateTime.now();

    final log = _format(
      showStackTrace: showStackTrace,
      level: level,
      time: time,
      callerFrame: _getCallerFrame(),
      message: msg,
    );

    if (showStackTrace) {
      developer.log(
        log,
        level: level.index,
        name: 'app logger',
        time: time,
        stackTrace: StackTrace.current,
        error: FormatException('exception'),
      );
    } else {
      // wrapWidthを設定しないとログが途中で途切れる
      debugPrint(log, wrapWidth: 1024);
    }
  }

  String _levelPrefixes(Level level) {
    switch (level) {
      case Level.debug:
        return '✅️️ ';
      case Level.info:
        return '⚠️ ';
      case Level.error:
        return '🚨 ';
      default:
        return '';
    }
  }

  String _format({
    required bool showStackTrace,
    required DateTime time,
    required Level level,
    required Frame? callerFrame,
    required String message,
  }) {
    return '${_levelPrefixes(level)}'
        '${showStackTrace ? '' : '${time.month}/${time.day}_${time.hour}:${time.minute}:${time.millisecond} '}'
        '[${callerFrame?.uri ?? 'caller info not available'}] '
        '$message';
  }

  Frame? _getCallerFrame() {
    const level = 3;
    // Expensive
    final frames = Trace.current(level).frames;
    return frames.isEmpty ? null : frames.elementAt(2);
  }
}
