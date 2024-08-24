
import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/student_dio_repository.dart';
//import '../../../repositories/student_repository.dart';

class DeleteCommand  extends Command{

  StudentDioRepository studentRepository;

  @override
  // TODO: implement description
  String get description => 'Delete Student by Id';

  @override
  // TODO: implement name
  String get name => 'delete';

  DeleteCommand(this.studentRepository){
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }

  @override
  Future<void> run() async {
    print('Aguarde...');
    final id = int.tryParse(argResults?['id']);

    if(id == null){
      print('Informe o id do aluno');
      return;
    }

    final studentById = await studentRepository.findById(id);

    print('Deseja deletar o(a) estudante ${studentById.name} ? (S | N)');
    
    final deleteConfirm = stdin.readLineSync();

    if(deleteConfirm?.toLowerCase() == 's'){

    print('excluindo aluno ${studentById.name} de id ${studentById.id}');
    print('--------------------------------------');

    studentRepository.deleteById(id);

    print('Operação finalizada com sucesso!');

    }else{     
      print('Exclusão cancelada, operação finalizada!');
    }

  
  }
  
}