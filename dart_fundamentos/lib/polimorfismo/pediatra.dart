import 'package:dart_fundamentos/polimorfismo/medico.dart';

class Pediatra extends Medico {
  @override
  void operar() {
    print('Examinar o bebê');
  }
    
  }