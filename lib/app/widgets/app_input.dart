import 'package:flutter/material.dart';
import 'package:flutter_widget/app/utils/app_colors.dart';
import 'package:flutter_widget/app/utils/validators.dart';
import 'package:flutter_widget/types.dart';



class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final IFormInput field;
  final String? Function(String? value)? validator;

  

  const TextInput({
    Key? key,
    this.validator,
    required this.controller,
    required this.field,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          controller: controller,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 24, 31, 128),
          ),
          decoration: InputDecoration(
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            hintText: field.placeholder,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: AppColors.grayScale,
            ),
            fillColor: const Color.fromARGB(125, 232, 234, 235),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primary),
              borderRadius: BorderRadius.circular(6),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.hexToColor("#DDDDDD")),
              borderRadius: BorderRadius.circular(6),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.hexToColor("#DDDDDD")),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          validator: validator,
          obscureText: field.type == FieldType.password,
          // keyboardType: textInputType,
        );
  }
}
