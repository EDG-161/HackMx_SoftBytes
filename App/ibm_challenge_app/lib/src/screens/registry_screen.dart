import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibm_challenge_app/src/screens/home_screen.dart';

class RegistryScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RegistryScreen();

}

class _RegistryScreen extends State<RegistryScreen>{

  int option = 1;

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15.0),
              child: Text(
                'Selecciona tu municipio para poder brindarte información de acuerdo a tu zona',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),

            DropdownButton<int>(
              value: option,
              items: [
                DropdownMenuItem(
                  value: 1,
                  child: Text('Estados'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('Estados2'),
                ),
              ],
              icon: const Icon(Icons.arrow_circle_down),
              elevation: 16,
              style: const TextStyle(color: Colors.blueAccent),
              underline: Container(
                height: 2,
                color: Colors.lightBlueAccent,
              ),
              onChanged:(int newValue) {
                setState(() {
                  option = newValue;
                });
              },
            ),

            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                },
                child: Text('Continuar')
            )
          ],
        ),
      ),
    );
  }

}