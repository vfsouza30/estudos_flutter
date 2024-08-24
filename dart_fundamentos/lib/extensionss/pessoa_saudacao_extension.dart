
import 'package:dart_fundamentos/extensionss/pessoa.dart';

extension PessoaSaudacaoExtension on Pessoa {

  String saudacao() {
    return 'Ola $nome bem vindo!';
  }
}