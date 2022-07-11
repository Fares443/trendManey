// ignore: depend_on_referenced_packages
// ignore_for_file: use_key_in_widget_constructors, depend_on_referenced_packages, duplicate_ignore

import 'package:flutter/material.dart';
import 'get_device_type.dart';
import 'device_info.dart';
import '/Responsive/device_info.dart';
import '/Responsive/get_device_type.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  const InfoWidget({required this.builder});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localHeight: constrains.maxHeight,
          localWidth: constrains.maxWidth,
        );
        return builder(context, deviceInfo);
      },
    );
  }
}