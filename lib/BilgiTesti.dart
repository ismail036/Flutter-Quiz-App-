import 'package:flutter/material.dart';

import 'ScorePage.dart';


class BilgiTesti extends StatelessWidget {
  const BilgiTesti({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  const SoruSayfasi({super.key});

  @override
  State<SoruSayfasi> createState() => _SoruSayfasiState();
}

class Sorular{
  String soru = "";
  bool cevap = false;

  Sorular(this.soru,this.cevap);

}

class _SoruSayfasiState extends State<SoruSayfasi> {

  List<Widget> secimler = [];
  List<Sorular> sorular = [
    Sorular("Titanic gelmiş geçmiş en büyük gemidir", false),
    Sorular("Dünyadaki tavuk sayısı insan sayısından fazladır", true),
    Sorular("Kelebeklerin ömrü bir gündür", false),
    Sorular("Dünya düzdür", false),
    Sorular("Kaju fıstığı aslında bir meyvenin sapıdır", true),
    Sorular("Fatih Sultan Mehmet hiç patates yememiştir", true),
    Sorular("Fransızlar 80 demek için, 4 - 20 der", true),
  ];


  int soruIndex = 0;
  int score = 0;


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                getText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(12),
                            iconColor: Colors.white,
                            backgroundColor: Colors.red[400],
                          ),
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            setState(() {
                              if(sorular[soruIndex].cevap == false){
                                secimler.add(dogruIconu);
                                score += 1;
                              }else{
                                secimler.add(yanlisIconu);
                              }
                              if (sorular.length-1! > soruIndex){
                                soruIndex += 1;
                              }
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(12),
                            iconColor: Colors.white,
                            backgroundColor: Colors.green[400],
                          ),
                          child: Icon(
                            Icons.thumb_up,
                            size: 30.0,
                          ),
                          onPressed: () {
                            setState(() {
                              if(sorular[soruIndex].cevap == true){
                                secimler.add(dogruIconu);
                                score += 1;
                              }else{
                                secimler.add(yanlisIconu);
                              }
                              if (sorular.length-1! > soruIndex){
                                soruIndex += 1;
                              }else{
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  ScorePage(score: score)),
                                );
                              };
                            });
                          },
                        ))),

              ])),
        )
      ],
    );

  }

  String getText() {
    String text = "";
    if (sorular.length > soruIndex){
      text = sorular[soruIndex].soru;
    }
    return text;
  }
}


const Icon dogruIconu = Icon(Icons.mood,color: Colors.green,);
const Icon yanlisIconu = Icon(Icons.mood_bad, color: Colors.red,);