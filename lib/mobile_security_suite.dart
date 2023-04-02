import 'package:flutter/services.dart';

class MobileSecuritySuite {
  static const methodChannel = MethodChannel('mobile_security_suite');

  static Future<String?> getPlatformVersion() async {
    return methodChannel.invokeMethod<String>('getPlatformVersion');
  }

  static Future<bool> isRootAccessEnabled() async {
    try {
      final hasRootAccess =
          await methodChannel.invokeMethod('isRootAccessEnabled');
      return hasRootAccess;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isBeingDebugged() async {
    try {
      final debuggingEnabled =
          await methodChannel.invokeMethod("isBeingDebugged");
      return debuggingEnabled;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isRunningInEmulator() async {
    try {
      final isEmulator =
          await methodChannel.invokeMethod("isRunningInEmulator");
      return isEmulator;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isBeingReverseEngineered() async {
    try {
      final isBeingRE =
          await methodChannel.invokeMethod("isBeingReverseEngineered");
      return isBeingRE;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isDeviceProxied() async {
    try {
      final isProxied = await methodChannel.invokeMethod("isDeviceProxied");
      return isProxied;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isScreenRecorded() async {
    try {
      final screenRecording =
          await methodChannel.invokeMethod("isScreenRecorded");
      return screenRecording;
    } catch (e) {
      return false;
    }
  }
}
