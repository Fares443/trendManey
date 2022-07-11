
// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:trend_money1/Responsive/device_type.dart.dart';
import 'enums/device_type.dart';
import '/Responsive/device_type.dart.dart';

class DeviceInfo {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHeight;

  DeviceInfo(
      {required this.orientation,
     required this.deviceType,
     required this.screenWidth,
     required this.screenHeight,
     required this.localWidth,
     required this.localHeight});
}