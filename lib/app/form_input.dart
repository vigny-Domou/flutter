import 'package:flutter/material.dart';
import 'package:flutter_widget/app/utils/app_colors.dart';
import 'package:flutter_widget/app/widgets/app_input.dart';
import 'package:flutter_widget/app/widgets/date_input.dart';
import 'package:flutter_widget/types.dart';



class FormInput extends StatelessWidget {
  final IFormInput field;
  late TextEditingController controller = TextEditingController();

  FormInput({
    Key? key,
    required this.field
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget input = TextInput(controller: controller, field: field);
    if (field.type == FieldType.date) {
      input = DateInput(controller: controller, label: field.label ?? field.name);
    }


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (field.label != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              field.label!,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrayText,
              ),
            ),
  
          ),
          
        SizedBox(height: 16.0), 
        input
      ],
    );
  }
}
