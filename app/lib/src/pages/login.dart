import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key});

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
                  Text (
                    'BIENVENIDO AL SISTEMA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Colors.white, // Cambiar el color del texto a blanco para mayor contraste
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('USUARIO:', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Ingrese su usuario',
                            hintStyle: TextStyle(color: Colors.white70), // Estilo del texto de sugerencia
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text('CONTRASEÑA:', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Ingrese su contraseña',
                            hintStyle: TextStyle(color: Colors.white70), // Estilo del texto de sugerencia
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 50), // Ancho mínimo y alto del botón
                    ),
                    child: Text('INGRESAR'),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50), // Ancho mínimo y alto del botón
                    ),
                    child: Text('REGISTRARME'),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50), // Ancho mínimo y alto del botón
                    ),
                    child: Text('CERRAR'),
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
