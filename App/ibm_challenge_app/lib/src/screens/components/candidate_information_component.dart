import 'package:flutter/material.dart';

class CandidateInformationComponent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CandidateInformationComponent();

}

class _CandidateInformationComponent extends State<CandidateInformationComponent>{
  @override
  Widget build(BuildContext context ) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            height: 200,
            child: Image.asset('assets/images/PRI.png'),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Nombre: '),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Tipo de candidatura: '),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Partido: '),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),
            child: Text(
              'Información',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Email:'),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Dirección:'),
          ),
          Container(
            margin: EdgeInsets.all(7),
            child: Text('Número:'),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text('Propuestas:'),
          ),
        ],
      ),
    );
  }

}