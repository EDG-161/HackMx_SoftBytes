import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ibm_challenge_app/src/screens/components/TakePhotoComponent.dart';
import 'package:ibm_challenge_app/src/screens/components/candidate_information_component.dart';
import 'package:ibm_challenge_app/src/screens/registry_vote_day_screen.dart';
import 'package:latlong/latlong.dart';



class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(

          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              alignment: Alignment.center,
              child: Text(
                'Candidatos de tu zona',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25,left: 25, right: 25,bottom: 15),
              height: 200,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(19.432608, -99.133209),
                  zoom: 13.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c']
                  ),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(51.5, -0.09),
                        builder: (ctx) =>
                            Container(
                              child: FlutterLogo(),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Ver otra zona')
              ),
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset('assets/images/PAN.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre'),
                    Text('Tipo de candidatura'),
                    Text('Partido / Alianza'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Scaffold(
                              appBar: AppBar(),
                              body: CandidateInformationComponent(),
                            ))
                        );
                      },
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.arrow_right_sharp,size: 60,),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset('assets/images/MOR.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre'),
                    Text('Tipo de candidatura'),
                    Text('Partido / Alianza'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Scaffold(
                              appBar: AppBar(),
                              body: CandidateInformationComponent(),
                            ))
                        );
                      },
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.arrow_right_sharp,size: 60,),
                    )
                  ],
                )
              ],
            ),Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset('assets/images/PAN.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre'),
                    Text('Tipo de candidatura'),
                    Text('Partido / Alianza'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Scaffold(
                              appBar: AppBar(),
                              body: CandidateInformationComponent(),
                            ))
                        );
                      },
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.arrow_right_sharp,size: 60,),
                    )
                  ],
                )
              ],
            ),Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset('assets/images/PRI.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre'),
                    Text('Tipo de candidatura'),
                    Text('Partido / Alianza'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Scaffold(
                              appBar: AppBar(),
                              body: CandidateInformationComponent(),
                            ))
                        );
                      },
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.arrow_right_sharp,size: 60,),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset('assets/images/MOR.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre'),
                    Text('Tipo de candidatura'),
                    Text('Partido / Alianza'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Scaffold(
                              appBar: AppBar(),
                              body: CandidateInformationComponent(),
                            ))
                        );
                      },
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.arrow_right_sharp,size: 60,),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.only(top:20, bottom: 20)),
        ),
        onPressed: () async {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistryVoteDayScreen()));
        },
        child: Text('Hoy es día de elecciones, vota!')
      ),
    );
  }

}