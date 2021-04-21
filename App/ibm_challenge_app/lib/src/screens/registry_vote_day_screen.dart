import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/TakePhotoComponent.dart';

class RegistryVoteDayScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RegistryVoteDayScreen();

}

class _RegistryVoteDayScreen extends State<RegistryVoteDayScreen>{

  int option = 1;

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Text(
                'Tenemos que comprobar ciertas cosas para poder garantizar tu voto ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left:15.0, right: 15.0, bottom: 15.0, top: 50.0),
                child: Text(
                  'Sube aquí una foto de tu INE',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              TakePhotoComponent( isNew: false),

              Container(
                margin: EdgeInsets.only(left:15.0, right: 15.0, bottom: 15.0, top: 50.0),
                child: Text('Necesitamos una foto tuya para validar tu identidad'),
              ),
              TakePhotoComponent( isNew: true)
            ],
          ),
        )
      ),
      bottomNavigationBar: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.only(top:20, bottom: 20)),
        ),
        onPressed: (){

        },
        child: Text('Continuar'),
      ),
    );
  }

}