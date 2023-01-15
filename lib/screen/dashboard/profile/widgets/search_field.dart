import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/border_radius.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatefulWidget {
  final String? hintText;
  final double? kPadding;
  final String? validationMessage;
  final TextEditingController? inputController;
  final IconData? prefixIcon;
  final bool? suffixIcon;
  final bool isDisabled;
  final bool autoFocus;
  final TextStyle? textStyle;
  final Color? color;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormat;
  final Function? onChanged;

  const SearchField({
    Key? key,
    this.hintText,
    this.kPadding,
    this.validationMessage,
    this.inputController,
    this.prefixIcon,
    this.suffixIcon,
    this.isDisabled = false,
    this.autoFocus = false,
    this.textStyle,
    this.color,
    this.textAlign,
    this.keyboardType,
    this.inputFormat,
    this.onChanged,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.kPadding ?? 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: normalBorderRadius,
              color: widget.color ?? Colors.transparent,
            ),
            child: TextFormField(
              textAlign: widget.textAlign ?? TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              controller: widget.inputController,
              autofocus: widget.autoFocus,
              readOnly: widget.isDisabled,
              obscureText: passwordVisibility,
              keyboardType: widget.keyboardType ?? TextInputType.text,
              style: widget.textStyle ??
                  GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      height: 1.0),
              inputFormatters: widget.inputFormat ?? [],
              onChanged: ((value) => {}),
              decoration: InputDecoration(
                prefixIcon: null == widget.prefixIcon
                    ? null
                    : Icon(
                        widget.prefixIcon,
                        // color: AppColor.neutralColor.shade700,
                      ),
                filled: widget.isDisabled == false ? null : true,
                hintText: widget.hintText,
                hintStyle: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w600,
                    height: 1.0),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 14.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.color ?? Colors.grey.shade100,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: widget.isDisabled
                            ? Colors.white
                            : widget.color ?? Colors.grey.shade100,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(16)),
                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 1.0),
                    borderRadius: BorderRadius.circular(16)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: widget.color ?? Colors.grey.shade100,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
