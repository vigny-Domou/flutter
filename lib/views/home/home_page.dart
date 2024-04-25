import 'package:flutter/material.dart';
import 'package:flutter_widget/app/utils/validators.dart';
import 'package:flutter_widget/app/widgets/app_button.dart';
import 'package:flutter_widget/app/widgets/app_input.dart';
import 'package:flutter_widget/app/widgets/date_input.dart';
import 'package:flutter_widget/form_builder.dart';
import 'package:flutter_widget/types.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController emailController;
  late TextEditingController nameController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController passwordController;
  late TextEditingController dateController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    dateController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget"),
      ),
      body: FormBuilder(
        key: formKey,
        fields: [
          IFormInput(
            name: 'email',
            label: 'Email',
            placeholder: 'Entrer votre email',
            type: FieldType.text,
            validations: {
              'email': true,
              'required': true,
            },
            // validator: (value) => Validators.validateEmail(value),
          ),
          IFormInput(
            name: 'password',
            label: 'Password',
            placeholder: 'Password',
            type: FieldType.password,
            validations: {
              'required': true,
            },
            validator: (value) => Validators.validatePassword(value, emailController.text),
          ),
          IFormInput(
            name: 'date',
            label: 'Date',
            placeholder: 'Date',
            type: FieldType.date,
            validations: {
              'required': true,
            },
          ),
        ],
      ),
    );
  }
}