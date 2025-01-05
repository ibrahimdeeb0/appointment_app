import 'package:flutter/material.dart';

class BottomBorder extends StatelessWidget {
  final double thickness;
  final double? horizontalSpacing;

  const BottomBorder({
    super.key,
    this.thickness = 2.0,
    this.horizontalSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Divider(
      color: theme.dividerColor,
      thickness: thickness,
      indent: horizontalSpacing,
      endIndent: horizontalSpacing,
      height: 0, // avoiding vertical empty spacing
    );
  }
}
