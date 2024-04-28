import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'login3_model.dart';
export 'login3_model.dart';

class Login3Widget extends StatefulWidget {
  const Login3Widget({Key? key});

  @override
  State<Login3Widget> createState() => _Login3WidgetState();
}

class _Login3WidgetState extends State<Login3Widget>
    with TickerProviderStateMixin {
  late Login3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  Login3Model createModel(BuildContext context, Login3Model Function() modelCreator) {
    return modelCreator();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Login3Model());
    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
    _model.passwordVisibility = false;
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color.fromARGB(255, 73, 35, 179),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.black,
              ],
              stops: [0, 1],
              begin: AlignmentDirectional(0.87, -1),
              end: AlignmentDirectional(-0.87, 1),
            ),
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              constraints: const BoxConstraints(
                maxWidth: 570,
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade200,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Connexion',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        letterSpacing: 0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                      child: Text(
                        "Remplissez les informations ci-dessous afin d'accéder à votre compte.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Tahoma',
                          letterSpacing: 0,
                        ),
                      ),
                    ),
Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.emailAddressController,
                                        focusNode: _model.emailAddressFocusNode,
                                        autofocus: true,
                                        autofillHints: const [AutofillHints.email],
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Email',
                                          labelStyle: TextStyle(
                                            fontFamily: 'Tahoma',
                                            color: Colors.blueGrey.shade500,
                                            letterSpacing: 0,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.white30,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey.shade500,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey.shade500,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey.shade500,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white30,
                                        ),
                                        style: const TextStyle(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                        minLines: null,
                                        keyboardType: TextInputType.emailAddress,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.passwordController,
                                        focusNode: _model.passwordFocusNode,
                                        autofocus: true,
                                        autofillHints: const [AutofillHints.password],
                                        obscureText: !_model.passwordVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                            color: Colors.blueGrey.shade500,
                                            fontFamily: 'Tahoma',
                                            letterSpacing: 0,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.white30,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey.shade500,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey.shade500,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey.shade500,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white30,
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model.passwordVisibility =
                                                  !_model.passwordVisibility,
                                            ),
                                            focusNode: FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons.visibility_off_outlined,
                                              color: Colors.blueGrey.shade500,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                        minLines: null,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 35),
                                    child: RichText(
                                      text: const TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Mot de passe oublié ?   ',
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 50, 126, 212),
                                            ),
                                          ),
                                        ],
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        // Votre logique de connexion ici
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(255, 108, 169, 200), // Couleur de fond du bouton
                                        padding: EdgeInsets.zero, // Pas de rembourrage autour du bouton
                                        elevation: 3, // Élévation du bouton
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12), // Coins arrondis du bouton
                                        ),
                                      ),
                                      child: Container(
                                        width: double.infinity, // Prend la largeur disponible
                                        height: 44, // Hauteur fixe du bouton
                                        alignment: Alignment.center, // Centrer le texte dans le bouton
                                        child: const Text(
                                          'Se connecter',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                 
                ),
              ),
    );
    
          
  }
}