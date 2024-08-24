import 'package:dart_fundamentos/metadatas/pessoa.dart';
import 'dart:mirrors';

import 'fazer.dart';

void main(){
  final p1 = Pessoa();

  var instanceMirror = reflect(p1);

  ClassMirror classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation){
    var instanceAnnotation = annotation.reflectee;
    if(instanceAnnotation is Fazer){
      print('CLASS');
      print('Quem: ${instanceAnnotation.quem}');
      print('O que: ${instanceAnnotation.oque}');
    }
  });

  classMirror.declarations.values.forEach((declarationMirror) {

    if(declarationMirror is VariableMirror){
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if(instanceAnnotation is Fazer){
          print('VARIAVEIS');
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
    }
       });
    }else if(declarationMirror is MethodMirror){
         declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if(instanceAnnotation is Fazer){
          print('METODOS');
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
    }
       });
    }
   });
}