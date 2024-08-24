
void main() {

var listaPacientes = [
'Victor|25',
'Manu|24',
'Fabiana|43',
'Fabio|40'
];

var listaPacientes2 = [
'Victor|25',
'Manu|24',
'Fabiana|43',
'Fabio|40'
];
// sort com compare
listaPacientes.sort((paciente1, paciente2){
	final pacienteDados1 = paciente1.split('|');
	final pacienteDados2 = paciente2.split('|');

	final idadePaciente1 = int.parse(pacienteDados1[1]);
	final idadePaciente2 = int.parse(pacienteDados2[1]);

	if(idadePaciente1 < idadePaciente2) {
		return -1;
	}else if(idadePaciente1 == idadePaciente2) {
		return 0;
	}else{
		return 1;
	}
});
  print(listaPacientes);

//sorte com compareTo
listaPacientes2.sort((paciente1, paciente2){
	final pacienteDados1 = paciente1.split('|');
	final pacienteDados2 = paciente2.split('|');

	final idadePaciente1 = int.parse(pacienteDados1[1]);
	final idadePaciente2 = int.parse(pacienteDados2[1]);

	return idadePaciente1.compareTo(idadePaciente2);
});
  print(listaPacientes2);


  //printa o metodo chamado
print('.every');
//every verifica se todos itens da lista atende as condições
final listaBusca2 = ['Rodrigo', 'Victor', 'Ana'];

if(listaBusca2.every((nome) => nome.contains('o'))) {
	print('Todos contem');
}else{
	print('Nem todos contem');
} 
}

