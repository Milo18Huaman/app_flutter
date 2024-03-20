import 'package:app/src/widgets/imagenCircular.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bienvenido());
}

class Bienvenido extends StatelessWidget {
  const Bienvenido({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0), // Altura cero para el AppBar
          child: AppBar(
            automaticallyImplyLeading: false, // Oculta el botón de navegación
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple.shade400, Colors.purple.shade900],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Aquí va la imagen del usuario
              imagenCircular(src: 'usuario.jpg'), //Aqui se pueden agregar mas imagenes copeando el codigo
              
              const SizedBox(height: 20), //---------------ESPACIO DE LOS CAMPOS 
              
              textoPersonalizado(texto: 'NOMBRE DE USUARIO'), // Aquí usas tu plantilla para el texto

              const SizedBox(height: 20), //---------------ESPACIO DE LOS CAMPOS 

              textoNormal(texto: 'ROL: ESTUDIANTE'),

              const SizedBox(height: 10),

              textoNormal(texto: 'HORA DE INGRESO: 8:12am'),

              const SizedBox(height: 10), //---------------ESPACIO DE LOS CAMPOS 

              dropdownPersonalizado(
                value: 'Jornada partida',
                onChanged: (String? newValue) {}, 
                items: ['Jornada partida', 'Jornada continua','Jornada laboral'], // Lista de opciones
              ),
              
              const SizedBox(height: 20), //---------------ESPACIO DE LOS CAMPOS
              
              textoEstilizado(
                texto: 'REGISTRO EXITOSO ¡BIENVENIDO!',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.green,
                
              ),

              const SizedBox(height: 20), //---------------ESPACIO DE LOS CAMPOS


              botonPersonalizado(
                texto: 'CERRAR',
                onPressed: () {
                  // Acción al presionar el botón
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

 
}
