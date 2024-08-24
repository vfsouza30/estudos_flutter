import 'package:args/command_runner.dart';

import '../../../repositories/student_dio_repository.dart';
//import '../../../repositories/student_repository.dart';

class FindByIdCommand extends Command {

  final StudentDioRepository studentRepository;

  @override
  // TODO: implement description
  String get description => 'Find Student By Id';

  @override
  // TODO: implement name
  String get name => 'byId';

  FindByIdCommand(this.studentRepository){
    argParser.addOption('id', help: 'Student Id', abbr: 'i');
  }

  @override
  Future<void> run() async {

    if(argResults?['id'] == null){
      print('por favor envie o id do aluno com o comando --id=? ou -i ?');
      return;
    }
    
    final id = int.parse(argResults?['id']);

    print('Aguarde buscando dados...');
    final student = await studentRepository.findById(id);
    print('-----------------------------------');
    print('Aluno: ${student.name}');
    print('-----------------------------------');
    print('Idade : ${student.age ?? 'Não informado'}');
    print('Curso:');
    student.nameCourses.forEach(print);
    print('Endereço:');
    print('   ${student.address.street} ${student.address.zipCode}');
  }

}