import 'package:dart_fundamentos/polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('Preparar e esterelizar os equipamentos');
    print('Anestesiar o paciente');
  }
  
}