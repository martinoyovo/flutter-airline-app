import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:airline_app/utils/input_decoration.dart';
import 'package:airline_app/utils/size_config.dart';
import 'package:airline_app/utils/strings.dart';
import 'package:airline_app/utils/styles.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key? key,
    this.focusNode,
    required this.controller,
    required this.label,
    this.mandatory = true,
    this.obscure = false,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.onFieldSubmitted,
    this.textInputAction,
    this.enabled,
    this.maxLines,
    this.hideTitle,
  }) : super(key: key);

  DefaultTextField.password({
    this.enabled,
    this.focusNode,
    this.controller,
    this.validator,
    this.maxLines,
    required this.obscure,
    this.keyboardType,
    required VoidCallback hideShowPas,
    this.onFieldSubmitted,
    this.textInputAction,
    bool isConPass = false,
    String? label,
    this.prefixIcon,
    this.hideTitle,
    Key? key,
  })  : label = isConPass ? confirmPwd : pwd,
        mandatory = true,
        suffixIcon = IconButton(
          icon: Icon(
            obscure ? CupertinoIcons.eye_fill : CupertinoIcons.eye_slash_fill,
          ),
          onPressed: hideShowPas,
        ),
        super(key: key);

  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String label;
  final bool mandatory;
  final bool obscure;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final bool? enabled;
  final bool? hideTitle;
  String get _label => label;
  Widget? get _suffixIcon => suffixIcon;
  IconData? get _prefixIcon => prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label == "Message" || label == "Titre" || hideTitle == true
            ? const SizedBox()
            : Text(
                _label,
                style: TextStyle(
                    color: Styles.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
        Gap(getProportionateScreenHeight(5)),
        TextFormField(
          maxLines: maxLines ?? 1,
          obscureText: obscure,
          enabled: enabled,
          focusNode: focusNode,
          keyboardType: keyboardType,
          cursorColor: Styles.primaryColor,
          textInputAction: textInputAction ?? TextInputAction.next,
          onFieldSubmitted: onFieldSubmitted,
          validator: (value) {
            if (label == promoCode || label == phone) {
              return null;
            } else {
              if (value!.isEmpty) {
                return 'Please fill this field';
              }
            }
            return validator?.call(value);
          },
          controller: controller,
          decoration: inputDecoration(
              text: _label, prefixIcon: _prefixIcon, suffixIcon: _suffixIcon),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: Styles.textStyle,
        ),
        Gap(getProportionateScreenHeight(10)),
      ],
    );
  }
}
