import 'package:flutter/material.dart';

CircleAvatar imagenCircular({required String src}) {
  return  CircleAvatar(
    radius: 120,
    backgroundImage: AssetImage(src), // Ruta corregida
  );
}

//////////////////////////////////////////////////////

Text textoPersonalizado({required String texto}) {
  return Text(
    texto,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white, // Cambiar color del texto a blanco
    ),
  );
}

//////////////////////////////////////////////////////

Text textoNormal({required String texto}) {
  return Text(
    texto,
    style: const TextStyle(
      fontWeight: FontWeight.normal,
      color: Colors.white, // Cambiar color del texto a blanco
    ),
  );
}

//////////////////////////////////////////////////////

SizedBox dropdownPersonalizado({
  required String value,
  required Function(String?) onChanged,
  required List<String> items,
}) {
  return SizedBox(
    width: 200,
    child: DropdownButtonFormField<String>(
      value: value,
      onChanged: onChanged,
      items: items
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: Colors.black), 
              ),
            );
          })
          .toList(),
    ),
  );
}

//////////////////////////////////////////////////////

ElevatedButton botonPersonalizado({
  required VoidCallback onPressed,
  required String texto,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(50, 50), 
    ),
    child: Text(texto),
  );
}

//////////////////////////////////////////////////////

Text textoEstilizado({
  required String texto,
  FontWeight fontWeight = FontWeight.bold,
  double fontSize = 20,
  Color color = Colors.black,
}) {
  return Text(
    texto,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    ),
  );
}


