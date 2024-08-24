import 'dart:convert';

import 'cidade.dart';
import 'telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco({ required this.rua, required this.numero, required this.cep, required this.cidade, required this.telefone});

  //Serialização

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone' : telefone.toMap()
    };
  }

  String toJson() => jsonEncode(toMap());

  //Deserialização

  factory Endereco.fromMap(Map<String, dynamic> map){
    return Endereco(
      rua: map['rua'] ?? '', 
      numero: map['numero'] ?? 0, 
      cep: map['CEP'] ?? '',
      cidade: Cidade.fromMap(map['cidade'] ?? <String, dynamic>{}), 
      telefone: Telefone.fromMap(map['telefone'] ?? <String, dynamic>{})
      );
  }

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));
}