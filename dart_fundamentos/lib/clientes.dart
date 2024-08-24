class Cliente {
  //TOMAR CUIDADO COM O LATE E O ! (FORCE NON NULL)
  late final String nome;
  //late sobrescreve muitas regras como, permitir um final inicializar em um futuro; Não precisar por ? de poder receber qualquer coisa. Ele burla o imediatismo.
  Cliente({required String nome});

  //forma de "inicializar com o late"
  Cliente.comNome({required String nome}){
    nome = nome;
  }
}