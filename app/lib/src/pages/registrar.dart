import 'package:flutter/material.dart';

void main() {
  runApp(const Registrar());
}

class Registrar extends StatelessWidget {
  const Registrar({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUTTER',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple.shade400, Colors.purple.shade900],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿QUE ROL CUMPLES EN LA INSTITUCION?',
                    style: TextStyle(
                      color: Colors.blue, // Color celeste
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50.0),
                  DropdownButtonFormField<String>(
                    value: 'ESTUDIANTE', // Valor inicial
                    onChanged: (String? newValue) {}, // Función vacía para evitar cambios
                    items: <String>['ESTUDIANTE', 'PROFESOR', 'PERSONAL'] // Lista de opciones
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 50.0), // Espacio entre el ComboBox y los botones
                  ElevatedButton( 
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 50), // Ancho mínimo y alto del botón
                    ),
                    child: Text('REGISTRAR MI ASISTENGIA'),
                  ),
                  SizedBox(height: 10.0), // Espacio entre los botones
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 50), // Ancho mínimo y alto del botón
                    ),
                    child: Text('VOLVER'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
