import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Validación de elector'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Text("Necesitamos una foto de su INE y de usted para validar"
                  " su identidad"
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Upload Image"))
            ],
          )
      ),
      bottomSheet: ElevatedButton(
          onPressed: () {},
          child: Text("Continuar")

      ),
    ),
  ),
  );
}