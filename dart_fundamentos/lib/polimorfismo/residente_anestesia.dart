import 'package:dart_fundamentos/polimorfismo/anestesista.dart';

class ResidenteAnestesista extends Anestesista{

  @override
  void operar(){
    super.operar();
    print('Auxiliar na esterelização');
  }
}