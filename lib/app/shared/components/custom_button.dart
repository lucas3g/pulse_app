// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:pulse_app/app/shared/extensions/build_context_extension.dart';

class AppCustomButton extends StatelessWidget {
  final Widget label;
  final Widget? icon;
  final Function()? onPressed;
  final bool expands;
  final double height;
  Color? backgroundColor;

  AppCustomButton({
    Key? key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.expands = false,
    this.height = 40,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor ??= context.colorScheme.primary;

    return icon != null
        ? ElevatedButton.icon(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              textStyle: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              fixedSize: expands ? Size(context.screenWidth, height) : null,
            ),
            icon: icon!,
            label: label,
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              textStyle: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              padding: EdgeInsets.zero,
              fixedSize: expands ? Size(context.screenWidth, height) : null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: label,
          );
  }
}
