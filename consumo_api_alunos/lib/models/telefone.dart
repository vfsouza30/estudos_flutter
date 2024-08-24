import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({required this.ddd, required this.telefone});

  //Serialização
  //toMap -> pega o objeto e transforma em um Objeto Map<String, dynamic>
  //Passo 1
  Map<String, dynamic> toMap(){
    return {
      'ddd': ddd,
      'telefone': telefone,      
    };
  }

  //toJson -> pege um map<String, Dynamic> transforma em um json pelo pacote dart:convert (jsonEnconde)
  //Passo 2
  String toJson() => jsonEncode(toMap());

  //Deserialização

  //Passo1
  factory Telefone.fromJson(String json)=> Telefone.fromMap(jsonDecode(json));

  //Passo2
  factory Telefone.fromMap(Map<String, dynamic> map){
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone']
    );
  }

}
