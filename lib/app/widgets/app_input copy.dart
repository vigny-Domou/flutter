import 'package:flutter_widget/types.dart';

FieldOption getFieldOption(FieldType fieldType) {
  Map<FieldType, FieldOption> fieldOptions = {
    FieldType.text: FieldOption(
      label: 'Text Field',
      value: 'text',
    ),
    FieldType.email: FieldOption(
      label: 'Email Field',
      value: 'email',
    ),
    FieldType.password: FieldOption(
      label: 'Password Field',
      value: 'password',
    ),
  };

  return fieldOptions[fieldType] ?? FieldOption(label: 'Unknown Field', value: null);
}