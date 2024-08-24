List novaLista(var lista){
    var novaLista = [...lista];

    return novaLista.toSet().toList();
}

void qtdPorSexo(var listaExterna){

  var listaInterna = novaLista(listaExterna);

  var splitList = listaInterna.map((e) => e.split('|')).toList();
  int masculino = 0;
  int feminino = 0;

  
  var masculinos = [];
  var femininos = [];

  for(var entry in splitList){
    if(entry[2] == 'Masculino'){
       masculino++;
       masculinos.add(entry[0]);
    }else{
      feminino++;
      femininos.add(entry[0]);
    }
  }

  print('Masculino: $masculinos');
  print('Feminino: $femininos');
  print('Masculino: $masculino, Feminino: $feminino');
}

void filterDezoitoAnos(var listaExterna){

  var listaInterna = novaLista(listaExterna);

  var splitList = listaInterna.map((e) => e.split('|')).toList();
  final mais18 = [];
  
  for(var entry in splitList){
    if(int.parse(entry[1]) > 18){
       
      mais18.add(entry[0]);
    }
  }
  print(mais18);
}

void pessoaMaisVelha(var listaExterna){

  var listaInterna = novaLista(listaExterna);

  //var splitList1 = listaInterna.map((e) => e.split('|')).toList();
  //var splitList2 = listaInterna.map((e) => e.split('|')).toList();
  var listaInternaMap = listaInterna.map((e) => e.split('|')).toList();
  
  listaInternaMap.sort((paciente1, paciente2){
	final splitList1 = paciente1[1];
	final splitList2 = paciente2[1];
  
	final idadePaciente1 = int.parse(splitList1);

	final idadePaciente2 = int.parse(splitList2);
	 return idadePaciente1.compareTo(idadePaciente2);
});
  
  List retorno = listaInternaMap.last;
  String nome = retorno[0];
  int idade = int.parse(retorno[1]);
  print('Nome: $nome, Idade: $idade');
}