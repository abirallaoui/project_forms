import 'package:flutter/material.dart';
import 'login3_widget.dart';
export 'login3_widget.dart';


import 'form_ajout_nv.dart';
export 'form_ajout_nv.dart';

import 'form_ajout_prof.dart';

import 'form_ajout_module.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      //home:const Login3Widget(),
      //home: const FormNiveauWidget(),
      //home: const FormProfWidget() ,
      home:  const FormModuleWidget() ,

    );
  }
}

