import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SpacingExtension on num {
  /// Creates a vertical space with the given height.
  SizedBox get spacingVertical => SizedBox(height: toDouble().h);

  /// Creates a horizontal space with the given width.
  SizedBox get spacingHorizontal => SizedBox(width: toDouble().w);

  /// Creates a square space with the given size.
  SizedBox get square => SizedBox(width: toDouble().w, height: toDouble().h);
}

extension Sizing on BuildContext {
  /// Returns the screen size of the device.
  double screenFlexHeight() => MediaQuery.sizeOf(this).height;

  /// Returns the screen size of the device.
  double screenFlexWidth() => MediaQuery.sizeOf(this).width;
}
