import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  
  final result = await get(Uri.parse('https://viacep.com.br/ws/01001009/json/'));

  if(result.statusCode != 200){
    print('Erro ao buscar CEP');
    return;
  }
  final resultData = json.decode(result.body);
  
  if(resultData.containsKey('erro')){
    print('CEP não existe');
  }else{
    print(resultData['logradouro']);
  }
}