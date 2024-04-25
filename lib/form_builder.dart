import 'package:flutter/material.dart';
import 'package:flutter_widget/app/form_input.dart';
import 'package:flutter_widget/app/widgets/app_button.dart';
import 'package:flutter_widget/app/widgets/app_input.dart';
import 'package:flutter_widget/types.dart';

class FormBuilder extends StatefulWidget {
  late List<IFormInput> fields;
  FormBuilder ({super.key, required this.fields});

  @override
  State<FormBuilder> createState() => _FormBuilderState();
}

class _FormBuilderState extends State<FormBuilder> {
  late TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {
    List <FormInput> children = widget.fields.map((e) => FormInput(field: e,)).toList();
    children.add(AppButton);
    
    return SingleChildScrollView(
         child: Form(key: formkey,
         autovalidateMode: AutovalidateMode.always,
         child:  Column(
          children :children,
          ),
          ),

    );
  }
}