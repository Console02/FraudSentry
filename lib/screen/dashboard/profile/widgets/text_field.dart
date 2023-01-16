import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final double? kPadding;
  final String? validationMessage;
  final TextEditingController? inputController;
  final IconData? prefixIcon;
  final bool? suffixIcon;
  final bool isDisabled;
  final bool autoFocus;
  final bool hasValidationMessage;
  final TextStyle? textStyle;
  final Color? color;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final Widget? suffixWidget;
  final List<TextInputFormatter>? inputFormat;
  final Function? onTap;
  final int? minLines;
  final int? maxLines;

  //final VoidCallback onChanged;

  const InputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.kPadding,
    this.validationMessage,
    this.inputController,
    this.prefixIcon,
    this.suffixIcon,
    this.isDisabled = false,
    this.autoFocus = false,
    this.hasValidationMessage = false,
    this.textStyle,
    this.color,
    this.textAlign,
    this.keyboardType,
    this.suffixWidget,
    this.inputFormat,
    this.onTap,
    this.maxLines,
    this.minLines,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.kPadding ?? 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText!,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kWhiteColor,
              // color: widget.isDisabled
              //     ? kWhiteColor
              //     : widget.color ?? Colors.grey.withOpacity(0.02),
            ),
            child: TextFormField(
              minLines: widget.minLines,
              maxLines: widget.maxLines,
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
              onTap: widget.onTap == null ? null : widget.onTap!(),
              decoration: InputDecoration(
                prefixIcon: null == widget.prefixIcon
                    ? null
                    : Icon(
                        widget.prefixIcon,
                        // color: AppColor.neutralColor.shade700,
                      ),
                suffix: widget.suffixWidget,
                filled: widget.isDisabled == false ? null : true,
                hintText: widget.hintText,
                hintStyle: GoogleFonts.montserrat(
                    fontSize: widget.isDisabled ? 14 : 12,
                    color:
                        widget.isDisabled ? kBlackColor : Colors.grey.shade400,
                    fontWeight: FontWeight.w600,
                    height: 1.0),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 14.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.isDisabled
                        ? kWhiteColor
                        : widget.color ?? Colors.grey.shade100,
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
          widget.isDisabled ? const Divider() : Container(),
          Text(
            widget.validationMessage ?? '',
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
