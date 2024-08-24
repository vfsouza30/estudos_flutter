import 'package:dart_fundamentos/clientes.dart';

void main(){
  var cliente = Cliente(nome: 'Victor');
  cliente.nome = 'Victor';
  print(cliente.nome);
}