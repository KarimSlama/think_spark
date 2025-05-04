import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class SparkTextFormField extends StatelessWidget {
  final TextInputType inputType;
  final TextEditingController controller;
  final VoidCallback? onSubmit;
  final String? label;
  final String? hint;
  final bool isObscureText;
  final int? maxLength;
  final IconData? prefixIcon;
  final double? height;
  final double? width;
  final double? borderRadius;
  final IconData? suffixIcon;
  final VoidCallback? suffixPressed;
  final Function(String?)? validator;
  final TextAlign textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final double borderWidth;
  final Color borderColor;
  final Color? fillColor;
  final int? maxLines;
  final TextStyle? textStyle;
  final Iterable<String>? autofillHints;

  const SparkTextFormField({
    super.key,
    required this.inputType,
    required this.controller,
    this.onSubmit,
    this.label,
    this.hint,
    this.prefixIcon,
    this.isObscureText = false,
    this.height = 50,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.width = double.infinity,
    this.suffixIcon,
    this.suffixPressed,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    this.borderRadius = 12,
    this.borderWidth = 1,
    this.borderColor = SparkColors.light,
    this.fillColor,
    this.textStyle,
    this.autofillHints, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        autofillHints: autofillHints,
        controller: controller,
        obscureText: isObscureText,
        maxLength: maxLength,
        maxLines: maxLines,
        validator: (value) => validator?.call(value),
        inputFormatters: inputFormatters,
        keyboardType: inputType,
        textAlign: textAlign,
        style: textStyle,
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(suffixIcon),
                )
              : null,
          labelText: label,
          hintText: hint,
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
