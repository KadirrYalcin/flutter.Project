import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AnaSayfa(),
  ));
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[400],
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        centerTitle: true,
        title: Text(
          'GÜNÜN FALI',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: bilgiler(),
    );
  }
}

class bilgiler extends StatefulWidget {
  @override
  State<bilgiler> createState() => _bilgilerState();
}

class _bilgilerState extends State<bilgiler> {
  int ask = 1;
  int para = 1;
  int gunluk = 1;
  int fal = 0;
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: CircleAvatar(
                child: Image.asset('assets/falci.png'),
                backgroundColor: Colors.purpleAccent[400],
                radius: (80.0)),
          ),
          Container(
              width: 300,
              child: Divider(
                height: 15,
                color: Colors.black,
              )),
          Container(
            width: 300,
            child: Card(
              color: Colors.white,
              child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () {
                  setState(() {
                    ask = Random().nextInt(5) + 1;
                    fal = ask;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'AŞK DURUMU',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            child: Card(
              color: Colors.white,
              child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () {
                  setState(() {
                    para = Random().nextInt(5) + 1;
                    fal = para + 5;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      size: 25,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'PARA DURUMU',
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            child: Card(
              color: Colors.white,
              child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () {
                  setState(() {
                    gunluk = Random().nextInt(5) + 1;
                    fal = gunluk + 10;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.explore_sharp,
                      size: 25,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'GÜNLÜK TAVSİYE',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
              width: 300,
              child: Divider(
                height: 15,
                color: Colors.black,
              )),
          Container(
            width: 300,
            child: Text(
              "${yanitlar[fal]}",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
