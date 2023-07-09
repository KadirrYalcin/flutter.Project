
class Calculate {
   double height;
   int weight;
   double _bmi=22.0;
  Calculate({required this.height, required this.weight});
  
  String bMI() {
    height=(height/100);
    _bmi = weight / (height * height);
    return _bmi.toStringAsFixed(1);

  }

  String result() {
    if (_bmi >= 25) {
      return "OWERWEİGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEİGHT";
    }
  }
  String advice(){

     if (_bmi >= 25) {
      return "Vücut indeksin yüksek,diyet yapmalısın";
    } else if (_bmi > 18.5) {
      return "Vücut idndeksin gayet normal,böyle devam";
    } else {
      return "Vücut idndeksin düşük,kilo almalısın";
    }
  }
}
