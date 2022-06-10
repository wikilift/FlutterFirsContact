import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? textInputType;
  final bool? obscure;
  final String formProperty;
  final Map<String, dynamic> formValues;
  final String? Function(String? value)? validate;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.textInputType,
    this.obscure,
    required this.formProperty,
    required this.formValues,
    this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: textInputType ?? TextInputType.text,
      //initialValue: '',
      autocorrect: true,
      textAlign: TextAlign.center,
      obscureText: obscure ?? false,
      //textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      // validator: (value) {
      //   if (value.toString().isEmpty) {
      //     return 'Este campo es requerido';
      //   }
      //   if (formValues['password'] != formValues['repeatedPassword'] &&
      //       formValues['repeatedPassword'].toString().isNotEmpty) {
      //     return 'Las contraseñas no coinciden';
      //   }
      validator: validate,
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: ' caracteres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.verified_user_sharp),

        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
