enum FieldType {
  mask,
  money,
  pin,
  radio,
  select,
  date,
  time,
  datetime,
  phone,
  checkbox,
  password,
  username,
  pricing,
  star,
  country,
  countryList,
  countryRegion,
  countryRegionList,
  multiAutocomplete,
  autocomplete,
  bool,
  file,
  image,
  picture,
  imagesCatalog,
  html,
  megaOptions,
  accountOptions,
  operationOptions,
  email,
  region,
  tagSelect,
  tagInput,
  iconSelect,
  number,
  url,
  wheel,
  static,
  slider,
  coords,
  creditcard,
  unit,
  selectList,
  categorySelect,
  calendar,
  yesno,
  dateInline,
  checkList,
  switchText,
  lineAmounts,
  dayOfWeek,
  text,
}


class FieldOption {
  String label;
  String? subtitle;
  String? suffix;
  dynamic value;
  String? search;
  // ImageSourcePropType? image;
  String? description;
  dynamic icon; // string | ImageSourcePropType | IconProps;
  String? color;
  String? group;

  FieldOption({
    required this.label,
    this.subtitle,
    this.suffix,
    required this.value,
    this.search,
    // this.image,
    this.description,
    this.icon,
    this.color,
    this.group,
  });
}


class IFormInput {
  String name;
  String? key;
  String? label;
  bool? required;
  bool? updateTitle;
  String? help;
  FieldType? type;
  Map<String, dynamic>? validations;
  Map<String, dynamic>? validationsMessages;

  // bool? allowCreation;
  // String? rightText;
  // bool? secureTextEntry;
  // bool? rounded;
  // int? autoCompleteMinLength;
  // Function? onAdd;
  // Function? onRemove;
  // bool? showAll;
  // bool? multi;
  // dynamic emptyList;
  // dynamic empty;
  // String? initialCountry;
  // String? country;
  // bool? showCallingCode;
  // bool? enableHalfStar;
  // int? maxStars;
  // Function? onCountryChange;
  // bool? showCountryPicker;
  // int? digits;
  // bool? showContactPicker;
  // dynamic ImageComponent;
  // String? callingCode;
  // Function? notifyError;
  // dynamic inputRef;
  // Object? maximumDate;
  // Object? minimumDate;
  // int? height;
  // String? currency;
  // int? pinSize;
  // int? precision;
  // String? numberType;
  // int? elevation;
  // List<FieldOption>? options;
  // bool? readonly;
  // List<FieldOption>? units;
  // Function? onValueUpdate;
  // int? iconSize;
  // bool? hidden;
  // int? max;
  // int? min;
  // String? equalToField;
  // Function? validator;
  // String? validatorError;
  // dynamic value;
  // bool? paymentWidget;
  // String? paymentWidgetText;
  // List<String>? updateFieldOnChanged;
  // String? font;
  // int? position;
  // String? testID;
  String? placeholder;
  // bool? selectTextOnFocus;
  // bool? multiline;
  // String? returnKeyType;
  // Function? onSubmitEditing;
  // int? minimumValue;
  // int? maximumValue;
  // int? step;
  // String? fileType;
  // List<FieldOption>? suggestions;
  // bool? autoFocus;
  // dynamic extraComputation;
  // Function? onSearch;
  // Function? onPressImage;
  // String? subType;
  // bool? selectedFirst;
  // int? labelWidth;
  // dynamic icon;
  // bool? searchable;
  // bool? skipable;
  // bool? navigable;
  // bool? groupable;
  // // List<Color>? colors;
  // bool? hideLabel;
  // String? suggestionsTitle;
  // String? layout;
  // dynamic option;
  // Function? onOptionChange;
  // Function? onColorChange;
  // Function? onIconChange;
  // List<String>? icons;
  // bool? animated;
  // int? numberOfLines;
  // Function? onBlur;
  // bool? hideCamera;
  // int? index;
  // int? animDuration;
  // bool? upperCase;
  // // ViewStyle? labelStyle;
  // int? onTypingDuration;

  IFormInput({
    required this.name,
    this.key,
    this.label,
    this.required,
    this.updateTitle,
    this.help,
    this.type,
    // this.allowCreation,
    // this.maskType,
    // this.action,
    // this.rightText,
    // this.secureTextEntry,
    // this.rounded,
    // this.autoCompleteMinLength,
    // this.onAdd,
    // this.onRemove,
    // this.showAll,
    // this.multi,
    // this.emptyList,
    // this.empty,
    // this.initialCountry,
    // this.country,
    // this.showCallingCode,
    // this.enableHalfStar,
    // this.maxStars,
    // this.formHorizontal,
    // this.onCountryChange,
    // this.showCountryPicker,
    // this.digits,
    // this.showContactPicker,
    // this.ImageComponent,
    // this.callingCode,
    // this.notifyError,
    // this.inputRef,
    // this.datePickerDisplay,
    // this.maximumDate,
    // this.minimumDate,
    // this.height,
    // this.currency,
    // this.pinSize,
    // this.precision,
    // this.numberType,
    // this.elevation,
    // this.maskOptions,
    // this.options,
    // this.readonly,
    // this.units,
    // this.onValueUpdate,
    // this.component,
    // this.iconSize,
    // this.iconColor,
    // this.hidden,
    // this.max,
    // this.min,
    // this.equalToField,
    // this.validator,
    // this.validatorError,
    // this.value,
    // this.paymentWidget,
    // this.paymentWidgetText,
    // this.updateFieldOnChanged,
    // this.font,
    // this.numOfLines,
    // this.imageOptions,
    // this.position,
    // this.testID,
    this.placeholder,
    //  required String? Function(dynamic value) validator
    // this.selectTextOnFocus,
    // this.multiline,
    // this.returnKeyType,
    // this.onSubmitEditing,
    // this.minimumValue,
    // this.maximumValue,
    // this.step,
    // this.containerStyle,
    // this.fileType,
    // this.suggestions,
    // this.keyboardType,
    // this.autoFocus,
    // this.extraComputation,
    // this.onSearch,
    // this.onPressImage,
    // this.subType,
    // this.selectedFirst,
    // this.labelWidth,
    // this.icon,
    // this.searchable,
    // this.skipable,
    // this.navigable,
    // this.groupable,
    // this.colors,
    // this.hideLabel,
    // this.suggestionsTitle,
    // this.layout,
    // this.option,
    // this.onOptionChange,
    // this.onColorChange,
    // this.onIconChange,
    // this.icons,
    // this.animated,
    // this.numberOfLines,
    // this.onBlur,
    // this.hideCamera,
    // this.index,
    // this.animDuration,
    // this.upperCase,
    // this.labelStyle,
    // this.onTypingDuration,
    this.validations,
    this.validationsMessages
  });
}