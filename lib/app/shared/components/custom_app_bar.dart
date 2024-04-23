import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    required Widget title,
    Widget? leading,
    Widget? flexibleSpace,
    List<Widget>? actions,
  }) : super(
          leading: leading,
          actions: actions,
          title: title,
          flexibleSpace: flexibleSpace,
        );
}
