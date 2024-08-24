void main(){
  var idade = '38 anos';
  String? nome;

// no try catch, é possível tratar formatos e tipos de erros específicos. Dessa forma, esses erros específicos devem ser tratados antes da tratativa geral

  try{
    int.parse(idade);
    nome!.toLowerCase();
  } on FormatException catch(e){
    print('Erro ao converter idade');
  }catch(erro) {
    print('Erro ao executar programa');
  }
}
