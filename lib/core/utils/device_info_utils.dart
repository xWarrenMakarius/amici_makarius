import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:uuid/uuid.dart';

import '../../di/shared_preferences_manager.dart';
import '../resources/keys.dart';
import '../resources/strings.dart';

class DeviceInfoUtils {

  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();


  static Future<String> get deviceUuid async {
    return const Uuid().v4();
  }

  static Future<String> get deviceId async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      return info.id;
    }

    if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      return info.identifierForVendor ?? '';
    }

    return '';
  }

  static Future<String> get deviceName async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      return '${info.manufacturer} ${info.model}'.trim();
    }

    if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      return info.name;
    }

    return '';
  }

  static Future<String> get model async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      return info.model;
    }

    if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      return info.model;
    }

    return '';
  }

  static Future<String> get manufacturer async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      return info.manufacturer;
    }

    if (Platform.isIOS) {
      return Strings.apple;
    }

    return '';
  }

  static Future<String> get operatingSystemVersion async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      return info.version.release;
    }

    if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      return info.systemVersion;
    }

    if (Platform.isMacOS) {
      final info = await _deviceInfo.macOsInfo;
      return info.osRelease;
    }

    return '';
  }

  static Future<String> get appVersion async {
    return '';
  }

  static Future<Map<String, dynamic>> get deviceInfo async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;

      return {
        Keys.platform: 'android',
        Keys.deviceId: info.id,
        Keys.manufacturer: info.manufacturer,
        Keys.model: info.model,
        Keys.brand: info.brand,
        Keys.androidVersion: info.version.release,
        Keys.sdkInt: info.version.sdkInt,
        Keys.isPhysicalDevice: info.isPhysicalDevice,
      };
    }

    if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;

      return {
        Keys.platform: 'ios',
        Keys.deviceId: info.identifierForVendor,
        Keys.name: info.name,
        Keys.model: info.model,
        Keys.systemName: info.systemName,
        Keys.systemVersion: info.systemVersion,
        Keys.isPhysicalDevice: info.isPhysicalDevice,
      };
    }

    return {
      Keys.platform: Platform.operatingSystem,
    };
  }
}