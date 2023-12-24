import 'package:flutter/material.dart';

void main() {
  runApp(const BilgiTesti());
}

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

class _SoruSayfasiState extends State<SoruSayfasi> {
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
      'Bilgi Testi Soruları',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
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
                                onPressed: () {},
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
                                onPressed: () {},
                              ))),

                              ])),
        ) 
      ],
    );

  }
}


