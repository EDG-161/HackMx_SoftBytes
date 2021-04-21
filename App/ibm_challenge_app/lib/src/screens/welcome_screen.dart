import 'package:ibm_challenge_app/src/screens/registry_screen.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';

class WelcomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _WelcomeScreen();

}

class _WelcomeScreen extends State<WelcomeScreen>{
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Bienvenido",
        description: "Bienvenido a ",
        pathImage: "assets/images/undraw_welcoming_xvuq.png",
        backgroundColor: Color(0xff1988EC),
      ),
    );
    slides.add(
      new Slide(
        title: "Usamos BlockChain",
        description: "Usamos BlockChain para ...",
        pathImage: "assets/images/undraw_election_day_w842.png",
        backgroundColor: Color(0xff203152),
      ),
    );
  }
  void onDonePress() {
    Navigator.push(context, MaterialPageRoute( builder: (context)=>RegistryScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new IntroSlider(
        slides: this.slides,
        nameDoneBtn: 'Listo',
        nameNextBtn: 'Siguiente',
        nameSkipBtn: 'Omitir',
        namePrevBtn: 'Atras',
        onDonePress: this.onDonePress,
      ),
    );
  }
}

