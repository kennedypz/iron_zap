import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_julia/styles/colors/color_styles.dart';
import 'package:whatsapp_julia/styles/paragraphs/paragraphs_styles.dart';
import 'package:whatsapp_julia/styles/sizes/size_styles.dart';

class TextInputWidget extends StatelessWidget {
  final Text? prefix;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final String? label;
  final Widget? labelWidget;
  final String hint;
  final void Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final bool isZipCode;
  final bool isMandatory;
  final Widget? prefixIcon;
  final TextStyle? prefixStyle;
  final Widget? suffix;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool autofocus;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final Function()? onEditingComplete;
  final bool enabled;
  final int maxLines;
  final bool isCpfCnpj;
  final TextAlign? textAlign;
  final TextStyle? hintStyle;
  final TextStyle? inputStyle;
  final bool alwaysFloatingLabel;
  final bool showCursor;
  final String? initialValue;
  final Function()? onTap;
  final bool readOnly;
  final bool allowCopyPaste;
  final TextStyle? labelStyle;
  final int? minLength;
  final String mandatoryMessage;
  final bool ismonthDate;
  final String? errorText;
  final String? prefixText;
  final bool? visible;
  final EdgeInsets? padding;
  final double? cursorHeight;

  TextInputWidget({
    this.prefixText,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.end,
    this.initialValue,
    this.label,
    this.labelWidget,
    this.hint = "",
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.ismonthDate = false,
    this.controller,
    this.isZipCode = false,
    this.isMandatory = false,
    this.prefix,
    this.prefixIcon,
    this.prefixStyle,
    this.suffix,
    this.suffixIcon,
    this.obscureText = false,
    this.autofocus = false,
    this.focusNode,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.enabled = true,
    this.maxLines = 1,
    this.isCpfCnpj = false,
    this.textAlign,
    this.hintStyle,
    this.inputStyle,
    this.alwaysFloatingLabel = false,
    this.showCursor = true,
    this.onTap,
    this.readOnly = false,
    this.allowCopyPaste = true,
    this.labelStyle,
    this.minLength,
    this.mandatoryMessage = "Este campo é obrigatório.",
    this.errorText,
    this.visible,
    this.padding,
    this.cursorHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible ?? true,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Visibility(
              visible: false,
              child: Container(
                padding: const EdgeInsets.only(bottom: SizeStyle.SIZE_12),
                child: prefix,
              ),
            ),
            const SizedBox(width: SizeStyle.SIZE_4,),
            TextFormField(
              enableInteractiveSelection: allowCopyPaste,
              onTap: onTap ?? () {},
              readOnly: readOnly,
              initialValue: initialValue,
              showCursor: showCursor,
              textAlign: textAlign ?? TextAlign.start,
              autofocus: autofocus,
              maxLines: maxLines,
              enabled: enabled,
              controller: controller,
              focusNode: focusNode,
              cursorHeight: cursorHeight ?? 22.0,
              obscureText: obscureText,
              inputFormatters: inputFormatters,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              style: inputStyle ??
                  Paragraph().style(
                      color: Color(
                          enabled ? ColorsStyle.grey_darker : ColorsStyle.warm_grey)),
              cursorColor: Theme.of(context).colorScheme.primaryVariant,
              decoration: InputDecoration(
                errorText: errorText,
                floatingLabelBehavior: alwaysFloatingLabel
                    ? FloatingLabelBehavior.always
                    : FloatingLabelBehavior.auto,
                contentPadding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                labelText: isMandatory && label != null ? '$label *' : label,
                label: labelWidget,
                alignLabelWithHint: true,
                labelStyle:
                    labelStyle ?? Heading6().style(color: const Color(ColorsStyle.grey_dark)),
                //prefix: prefix == null ? null : Text('      '),
                prefixText: prefixText,
                prefixIcon: prefixIcon,
                prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                prefixStyle: prefixStyle ?? Paragraph().style(
                    color: Color(
                        enabled ? ColorsStyle.grey_darker : ColorsStyle.warm_grey)),
                suffix: suffix ?? const Icon(Icons.warning, color: Colors.transparent),
                suffixIcon: suffixIcon,
                hintText: isMandatory && !hint.contains("•") && label == null ? '$hint *' : hint,
                hintStyle: hintStyle ??
                    Paragraph().style(color: const Color(ColorsStyle.grey_light)),
                errorStyle: MediaQuery.of(context).size.width < 330 ? Caption4().style(color: Theme.of(context).colorScheme.error) : Caption().style(color: Theme.of(context).colorScheme.error),
                errorMaxLines: 2,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(ColorsStyle.grey_dark),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primaryVariant, width: 2.0),
                ),
              ),
              onChanged: onChanged ?? (String value) {},
              onFieldSubmitted: onFieldSubmitted,
              onEditingComplete: onEditingComplete,
              validator: (value) {
                if (isMandatory) {
                  if (value == null || value.isEmpty) {
                    return mandatoryMessage;
                  }
                }

                if (minLength != null && value!.length < minLength!) {
                  return "Quantidade de caracteres insuficiente.";
                }

                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
