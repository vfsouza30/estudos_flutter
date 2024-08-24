void main() {
  //sintaxe map. Se não colocar os tipos da chave e valor dentro do <>, será um Set
  final paciente = <String, String>{
    'nome': 'Victor',
    'curso': 'Academia do Flutter'
  };

  var produtos = <String, String>{};
  //se não existir aquela chave, cria;
  //se já existir a chave, não altera;
  produtos.putIfAbsent('nome', () => 'Bola');
  print(produtos);

  // Atualiza o registro
  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);

  //recuperando valor;
  print('Produto ${produtos['nome']}');

  //atualizando o registro. Se não houver aquele registro, cria
   produtos.update('preco', (value) => '10', ifAbsent:() => '10');
   print(produtos);

   for(var entry in produtos.entries){
    print('Chave: ${entry.key}: ${entry.value}');
   }
  
  //não usar quando for realizar processo async
  produtos.forEach((key, value) {
    print('Chave: $key, $value');
  });

  //criar um Map a partir de outro
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });

print(novoMapaProdutos);
}