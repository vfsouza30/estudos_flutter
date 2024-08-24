import 'package:dart_fundamentos/polimorfismo/obstetra.dart';
import 'package:dart_fundamentos/polimorfismo/pediatra.dart';
import 'package:dart_fundamentos/polimorfismo/residente_anestesia.dart';

import 'medico.dart';

void main(){
  var medicos = <Medico>[
    ResidenteAnestesista(),
    Obstetra(),
    Pediatra(),
  ];

  for (var medico in medicos) {
    medico.operar();
  }
}