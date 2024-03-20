import 'package:app/src/pages/bienvenido.dart';
import 'package:app/src/pages/login.dart';
import 'package:app/src/pages/registrar.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> rutas = {
   'Login' : (context) =>  const Login(),
   'Registrar' : (context) =>  const Registrar(),
   'Bienvenido' : (context) =>  const Bienvenido(),
};