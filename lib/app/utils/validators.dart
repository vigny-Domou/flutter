class Validator {
  late String name;
  late dynamic value;
  late Map<String, dynamic> validations;
  Map<String, dynamic>? validationsMessages;

  String? validate() {
    var ret;
    if (validations.containsKey('required') && validations['required'] == true) {
      ret = validateRequired();
    }

    if (validations.containsKey('email') && validations['email'] == true) {
      return validateEmail();
    }
  }
  // quand  validationsMessages n'est pas renseigner on affiche le message par defaut
   String? required(String fieldName, dynamic value) {
    if (value == null || value.toString().isEmpty) {
      return validationsMessages && validationsMessages?.containsKey('required') ? validationsMessages['required'] : 'Veuillez saisir $fieldName';
    }
    return null;
  }

  String? validateEmail() {
    if (email.isEmpty) {
      return 'Veuillez saisir votre adresse e-mail';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return 'Veuillez saisir une adresse e-mail valide';
    }
    return null;
  }

  static String? validatePassword(String password, String email) {
    if (password.isEmpty) {
      return 'Veuillez saisir votre mot de passe';
    }
    if (password.length < 6) {
      return 'Le mot de passe doit contenir au moins 6 caractères';
    }
    if (password.contains(email)) {
      return 'Le mot de passe ne doit pas contenir l\'adresse e-mail';
    }
    return null;
  }
}


// class Validator {
//   late String name;
//   late dynamic value;
//   late Map<String, dynamic> validations;
//   static Map<String, dynamic>? validationsMessages;
  
//   static String? validate(String fieldName, dynamic value, Map<String, dynamic> validations) {
//     if (validations.containsKey('required') && validations['required'] == true) {
//       return required(fieldName, value);
//     }
//     if (validations.containsKey('email') && validations['email'] == true) {
//       return validateEmail(value);
//     }
//     return null;
//   }

//   static String? required(String fieldName, dynamic value) {
//     if (value == null || value.toString().isEmpty) {
//       return validationsMessages != null && validationsMessages!.containsKey('required') ? validationsMessages!['required'] : 'Veuillez saisir $fieldName';
//     }
//     return null;
//   }

//   static String? validateEmail(dynamic value) {
//     if (value.isEmpty) {
//       return 'Veuillez saisir votre adresse e-mail';
//     }
//     if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//       return 'Veuillez saisir une adresse e-mail valide';
//     }
//     return null;
//   }

//   static String? validatePassword(String password, String email) {
//     if (password.isEmpty) {
//       return 'Veuillez saisir votre mot de passe';
//     }
//     if (password.length < 6) {
//       return 'Le mot de passe doit contenir au moins 6 caractères';
//     }
//     if (password.contains(email)) {
//       return 'Le mot de passe ne doit pas contenir l\'adresse e-mail';
//     }
//     return null;
//   }
// }



































































// class Validators {
//   static String? validatePassword(String? password, String? username) {
//     if (password == null) return Validators.required("Password", password);
//     RegExp oneUppercaseLetter = new RegExp(r"[A-Z0-9]+");
//     RegExp oneLowercaseLetter = new RegExp(r"[a-z0-9]+");
//     RegExp minLength = new RegExp(r".{8,}");
//     RegExp specialChar = new RegExp(r"[@!#%&()^~{}]{2,}");
  

//     if (!oneUppercaseLetter.hasMatch(password)) {
//       return "One uppercase letter";
//     }

//     if (!oneLowercaseLetter.hasMatch(password)) {
//       return "One lowercase letter";
//     }
//     if (!minLength.hasMatch(password)) {
//       return "Minimum password length of 8 characters";
//     }
//     if (!specialChar.hasMatch(password)) {
//       return "Two special characters";
//     }

//     if (username != null) {
//       if (password.contains(username)) {
//         return "Password should not contain the username";
//       }
//     }

//     return null;
//   }

//   static String? required(String fieldName, String? value) {
//     if (value == null || (value.isEmpty)) return "$fieldName is required";
//     return null;
//   }
//   static String? checkFieldEmpty(String? fieldContent) {
//     if(fieldContent!.isEmpty) {
//       return 'Ce champ est obligatoire.';
//     }
//     return null;
//   }
//   // bool isValidEmail(String email) {
//   //   final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
//   //   return emailRegex.hasMatch(email);
//   // }
//   // String? validateEmail(String value) {
//   // if (value.isEmpty) {
//   //   return 'Veuillez saisir votre adresse e-mail';
//   // }
//   // if (!Validators.isValidEmail(value)) {
//   //   return 'Veuillez saisir une adresse e-mail valide';
//   // }
//   // return null;
// }

  


































































// class Validators {
//   static String? validatePassword(String? password, String? username) {
//     if (password == null) return Validators.required("Password", password);
//     RegExp oneUppercaseLetter = new RegExp(r"[A-Z0-9]+");
//     RegExp oneLowercaseLetter = new RegExp(r"[a-z0-9]+");
//     RegExp minLength = new RegExp(r".{8,}");
//     RegExp specialChar = new RegExp(r"[@!#%&()^~{}]{2,}");
  

//     if (!oneUppercaseLetter.hasMatch(password)) {
//       return "One uppercase letter";
//     }

//     if (!oneLowercaseLetter.hasMatch(password)) {
//       return "One lowercase letter";
//     }
//     if (!minLength.hasMatch(password)) {
//       return "Minimum password length of 8 characters";
//     }
//     if (!specialChar.hasMatch(password)) {
//       return "Two special characters";
//     }

//     if (username != null) {
//       if (password.contains(username)) {
//         return "Password should not contain the username";
//       }
//     }

//     return null;
//   }

//   static String? required(String fieldName, String? value) {
//     if (value == null || (value.isEmpty)) return "$fieldName is required";
//     return null;
//   }
//   static String? checkFieldEmpty(String? fieldContent) {
//     if(fieldContent!.isEmpty) {
//       return 'Ce champ est obligatoire.';
//     }
//     return null;
//   }
//   // bool isValidEmail(String email) {
//   //   final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
//   //   return emailRegex.hasMatch(email);
//   // }
//   // String? validateEmail(String value) {
//   // if (value.isEmpty) {
//   //   return 'Veuillez saisir votre adresse e-mail';
//   // }
//   // if (!Validators.isValidEmail(value)) {
//   //   return 'Veuillez saisir une adresse e-mail valide';
//   // }
//   // return null;
// }

  
