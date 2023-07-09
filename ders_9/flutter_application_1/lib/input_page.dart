import 'package:flutter/material.dart';
import './kartlar.dart';
import './cinsiyet.dart';
import './result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String SecilenCinsiyet = '';
  Color KadinRengi = Colors.white;
  Color ErkekRengi = Colors.white;
  double IcilenSigara = 0.0;
  double YapilanSpor = 0.0;
  int kilo=60;
  int boy=170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Kart(
                      YanKart( 'BOY')
                )),
                Expanded(
                  child: Kart(
                  YanKart('KİLO'),),
                )
              ],
            ),
          ),
          Expanded(
            child: Kart(Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HAFTADA KAÇ GÜN SPOR YAPIYORSUNUZ?",
                    style: YaziStili),
                Text(YapilanSpor.round().toString(),
                    style: SayiStili),
                Slider(
                    min: 0,
                    max: 7,
                    value: YapilanSpor,
                    divisions: 7,
                    onChanged: (double newValue) {
                      setState(() {
                        YapilanSpor = newValue;
                      });
                    })
              ],
            )),
          ),
          Expanded(
            child: Kart(Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "GÜNDE KAÇ TANE SIGARA İÇİYORSUNUZ?",
                  style: YaziStili,
                ),
                Text(IcilenSigara.round().toString(),
                    style: SayiStili),
                Slider(
                    min: 0,
                    max: 30,
                    value: IcilenSigara,
                    onChanged: (double newValue) {
                      setState(() {
                        IcilenSigara = newValue;
                      });
                    })
              ],
            )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            SecilenCinsiyet = 'KADIN';
                            KadinRengi = Colors.blueGrey;
                            ErkekRengi = Colors.white;
                          });
                        },
                        child: Kart(
                            CinsiyetBilgisi(
                              'KADIN',
                              FontAwesomeIcons.venus,
                            ),
                            KadinRengi))),
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            SecilenCinsiyet == 'ERKEK';
                            ErkekRengi = Colors.blueGrey;
                            KadinRengi = Colors.white;
                          });
                        },
                        child: Kart(
                            CinsiyetBilgisi(
                              'ERKEK',
                               FontAwesomeIcons.mars),
                            ErkekRengi))),
            
              ],
            ),
          ),
 RaisedButton(
  
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SonucRoute(IcilenSigara.round()),));
            },
            child:Kart(Text("SONUCU GÖR"))),
        ],
      ),
    );
  }

  Row YanKart(String yazi) 
  {

    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(quarterTurns: -1, child: Text(yazi,style: YaziStili,)),
                    SizedBox(width:10,),
                    RotatedBox(quarterTurns: -1, child: Text(
                      yazi=='BOY'?boy.toString() : kilo.toString()
                      ,style: SayiStili,)),
                    SizedBox(
                        width: 25,
                      ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      ButtonTheme(
                        minWidth: 36,
                        child: OutlinedButton(
                         
                          onPressed: (){
                          setState(() {
                            yazi=='BOY'? boy++ : kilo++;
                          });
                        }, 
                       child: Icon(FontAwesomeIcons.plus)),
                      
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ButtonTheme(
                      minWidth: 36,
                      child: OutlinedButton(onPressed: (){
                        setState(() {
                          yazi=='BOY'? boy-- : kilo--;
                        });
                      }, child: Icon(FontAwesomeIcons.minus))),
                    
                    
                    ],)
                  ],
                );
  }
}