import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    this.hint,
    this.errorText,
    this.mask,
    this.initialValue,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.obscureText = false,
    this.moneyInput = false,
    this.upperCaseInput = false,
    this.autofocus = false,
    this.enabled,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.background,
    this.hintColor,
    this.inputColor,
    this.suffix,
    this.prefixIcon,
    this.padding,
    this.controller,
    this.onTap,
    this.onChanged,
    this.suffixPressed,
    this.keyboardType,
    this.inputFormatter,
    this.textInputAction,
  });

  final String? hint;
  final String? errorText;
  final String? mask;
  final String? initialValue;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool obscureText;
  final bool? enabled;
  final bool moneyInput;
  final bool upperCaseInput;
  final bool autofocus;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? background;
  final Color? hintColor;
  final Color? inputColor;
  final Widget? prefixIcon;
  final Widget? suffix;
  final EdgeInsets? padding;
  final TextEditingController? controller;
  final GestureTapCallback? onTap;
  final VoidCallback? suffixPressed;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputAction? textInputAction;


  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool passwordVisible = true;
  late MaskTextInputFormatter maskFormatter;

  @override
  void initState() {
    passwordVisible = widget.obscureText;
    super.initState();
    maskFormatter = MaskTextInputFormatter(
      mask: widget.mask,
      filter: {"#": RegExp(r'\d')},
      type: MaskAutoCompletionType.lazy,
    );
  }

  @override
  void dispose() {
    maskFormatter.clear();
    widget.controller?.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      initialValue: widget.initialValue,
      autofocus: widget.autofocus,
      enabled: widget.enabled,
      controller: widget.controller,
      onTap: widget.onTap,
      keyboardType: widget.keyboardType,
      obscureText: passwordVisible,
      cursorColor: context.colors.primary,
      onChanged: widget.onChanged == null
          ? null
          : (phone) {
              final number = widget.moneyInput
                  ? phone.replaceAll(' ', '')
                  : maskFormatter.unmaskText(phone);
              widget.onChanged!(number);
            },
      inputFormatters: widget.inputFormatter ??
          [
            widget.moneyInput ? PriceInputFormatter() : maskFormatter,
          ],
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.background ?? context.colors.white,
        hintText: widget.hint,
        errorText: widget.errorText,
        contentPadding: widget.padding ??
            const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
        prefixIcon: widget.prefixIcon == null
            ? null
            : Align(
                widthFactor: 1,
                alignment: Alignment.center,
                child: widget.prefixIcon,
              ),
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: widget.hintColor ?? context.colors.hintColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: context.colors.border),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.enabledBorderColor ?? context.colors.border,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.colors.border),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.focusedBorderColor ?? context.colors.primary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.colors.errorBorder),
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  passwordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                onPressed: () {
                  setState(() => passwordVisible = !passwordVisible);
                },
              )
            : widget.suffix != null
                ? IconButton(
                    icon: widget.suffix!,
                    onPressed: widget.suffixPressed,
                  )
                : null,
      ),
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: widget.inputColor ?? context.colors.textColor,
      ),
    );
  }
}

class PriceInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    newText = newText.replaceAll(RegExp(r'\D'), '');

    String formattedText = '';
    int len = newText.length;
    for (int i = len - 1; i >= 0; i--) {
      formattedText = newText[i] + formattedText;
      if ((len - i) % 3 == 0 && i != 0) {
        formattedText = ' $formattedText';
      }
    }

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  final int? maxLength;

  UpperCaseTextFormatter({this.maxLength});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (maxLength != null && newValue.text.length > maxLength!) {
      return oldValue;
    }
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
