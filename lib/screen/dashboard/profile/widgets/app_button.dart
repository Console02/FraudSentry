import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/border_radius.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/spacing.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/styles.dart';

enum AppButtonSize { tiny, small, medium, normal }

enum AppButtonType { elevated, outlined, circularWithLabel }

class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final bool disabled;
  final bool isBusy;
  final AppButtonSize size;
  final String title;
  final Color? titleColor;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? iconSize;
  final Color? borderColor;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final Color? outlineButtonBorderColor;
  final AppButtonType _type;
  final String? icon;
  final Function? onClick;
  final EdgeInsetsGeometry? padding;

  const AppButton({
    Key? key,
    this.width,
    this.disabled = false,
    required this.title,
    this.isBusy = false,
    this.titleColor = Colors.white,
    this.backgroundColor,
    this.height,
    this.padding,
    this.textStyle,
    this.size = AppButtonSize.normal,
    this.onTap,
    this.iconSize,
    this.borderColor,
    this.iconColor,
    this.leadingIcon,
    this.trailingIcon,
    this.outlineButtonBorderColor,
    this.icon,
    this.onClick,
  })  : _type = AppButtonType.elevated,
        super(key: key);

  const AppButton.outlined({
    Key? key,
    this.width,
    this.disabled = false,
    required this.title,
    this.isBusy = false,
    this.titleColor = Colors.white,
    this.backgroundColor,
    this.height,
    this.padding,
    this.textStyle,
    this.size = AppButtonSize.normal,
    this.onTap,
    this.iconSize,
    this.borderColor,
    this.iconColor,
    this.leadingIcon,
    this.trailingIcon,
    this.outlineButtonBorderColor,
    this.icon,
    this.onClick,
  })  : _type = AppButtonType.outlined,
        super(key: key);

  const AppButton.circularWithLabel({
    Key? key,
    this.width,
    this.disabled = false,
    required this.title,
    this.isBusy = false,
    this.titleColor = Colors.white,
    this.backgroundColor,
    this.height,
    this.padding,
    this.textStyle,
    this.size = AppButtonSize.normal,
    this.onTap,
    this.iconSize,
    this.borderColor,
    this.iconColor,
    this.leadingIcon,
    this.trailingIcon,
    this.outlineButtonBorderColor,
    this.icon,
    this.onClick,
  })  : _type = AppButtonType.circularWithLabel,
        super(key: key);

  double _getButtonHeight(AppButtonSize size) {
    switch (size) {
      case AppButtonSize.tiny:
        return 20;
      case AppButtonSize.small:
        return 40;
      case AppButtonSize.medium:
        return 55;
      case AppButtonSize.normal:
        return 60;
    }
  }

  double _getButtonWidth(AppButtonSize size) {
    switch (size) {
      case AppButtonSize.tiny:
        return 100;
      case AppButtonSize.small:
        return 120;
      case AppButtonSize.medium:
        return 200;
      case AppButtonSize.normal:
        return 350;
    }
  }

  TextStyle _getTextSize(AppButtonSize size) {
    switch (size) {
      case AppButtonSize.tiny:
        return kSmallBoldTextStyle.copyWith(
          color: titleColor,
          fontSize: 9,
        );
      case AppButtonSize.small:
        return kBodyTextStyle.copyWith(
          color: titleColor,
        );
      case AppButtonSize.medium:
        return kSubtitleTextStyle.copyWith(
          color: titleColor,
        );
      case AppButtonSize.normal:
        return kSubtitleTextStyle.copyWith(
          color: titleColor,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case AppButtonType.elevated:
        return MaterialButton(
          disabledColor: Colors.grey,
          onPressed: disabled ? null : _onTap,
          color: backgroundColor ?? kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: miniBorderRadius,
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: 1.0,
            ),
          ),
          elevation: 0,
          child: SizedBox(
            width: width ?? _getButtonWidth(size),
            height: height ?? _getButtonHeight(size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) ...[
                  Icon(
                    leadingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
                  horizontalSpaceSmall
                ],
                Flexible(
                  child: Text(
                    title,
                    style: _getTextSize(size),
                  ),
                ),
                if (trailingIcon != null) ...[
                  horizontalSpaceMedium,
                  Icon(
                    trailingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
                ]
              ],
            ),
          ),
        );
      case AppButtonType.outlined:
        return OutlinedButton(
          onPressed: disabled ? null : _onTap,
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            side: BorderSide(color: outlineButtonBorderColor ?? kPrimaryColor),
          ),
          child: Container(
            width: width ?? _getButtonWidth(size),
            height: height ?? _getButtonHeight(size),
            decoration: BoxDecoration(
              borderRadius: miniBorderRadius,
              border: borderColor != null
                  ? Border.all(color: borderColor ?? kPrimaryColor)
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) ...[
                  Icon(
                    leadingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
                  horizontalSpaceMedium
                ],
                Flexible(
                  child: Text(
                    title,
                    style: _getTextSize(size),
                  ),
                ),
                if (trailingIcon != null) ...[
                  horizontalSpaceMedium,
                  Icon(
                    trailingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
                ]
              ],
            ),
          ),
        );
      case AppButtonType.circularWithLabel:
        return IconButton(
          padding: padding ?? const EdgeInsets.all(0.0),
          onPressed: onClick == null ? null : (() => onClick!()),
          icon: Wrap(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    child: icon == null
                        ? const Icon(
                            Icons.person,
                            color: Colors.white,
                          )
                        : Image.asset(icon!),
                  ),
                  Text(title, style: textStyle),
                ],
              ),
            ],
          ),
        );
    }
  }

  void _onTap() {
    if (!isBusy) onTap?.call();
  }
}
