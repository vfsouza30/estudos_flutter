import 'dart:convert';

void main() {
  final jsonCEP = '''
  {
    "cep": "01001-000",
    "logradouro": "Praça da Sé"
  }
''';

  final jsonData = json.decode(jsonCEP);
  print(jsonData['cep']);

  final jsonMap = {'curso': 'Academia do FLutter', 'totalAlunos': 400};
  final jsonMapEncode = json.encode(jsonMap);
  print(jsonMapEncode);
}
