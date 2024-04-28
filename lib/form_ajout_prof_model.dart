
import 'form_ajout_prof.dart' show FormProfWidget;
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';


class FormFieldController<T> {
  T? value;

  FormFieldController(this.value);

  void updateValue(T newValue) {
    value = newValue;
  }
}


class FormProfModel extends FormProfWidget {

  


  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomController;
  String? Function(String?)? nomControllerValidator;

  String? _nomControllerValidator(String? val) {
  if (val == null || val.isEmpty) {
    return 'SVP entrez votre nom.';
  }
  return null;
}

  // State field(s) for age widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(String?)? emailControllerValidator;
  String? _emailControllerValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'SVP entrez votre email.';
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  String? Function(String?)? passwordControllerValidator;

   String? _ListeetudiantsControllerValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'SVP entrez le mot de passe.';
    }

    return null;
  }

  // State field(s) for prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomController;

  //final prenomMask = MaskTextInputFormatter(mask: '##/##/####');
  //final MaskTextInputFormatter prenomMask = MaskTextInputFormatter(mask: '##/##/####');

  String? Function(String?)? prenomControllerValidator;
  String? _prenomControllerValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  
  @override
  void initState(BuildContext context) {
    nomControllerValidator = _nomControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    prenomControllerValidator = _prenomControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomFocusNode?.dispose();
    nomController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    prenomFocusNode?.dispose();
    prenomController?.dispose();

    
  }
}
