
import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../models/address.dart';
import '../../../models/city.dart';
import '../../../models/phone.dart';
import '../../../models/student.dart';
import '../../../repositories/product_dio_repository.dart';
//import '../../../repositories/product_repository.dart';
import '../../../repositories/student_dio_repository.dart';
//import '../../../repositories/student_repository.dart';

class UpdateCommand extends Command {

  StudentDioRepository studentRepository;
  final productRepository = ProductDioRepository();

  @override
  // TODO: implement description
  String get description => 'Update Student';

  @override
  // TODO: implement name
  String get name => 'update';

  UpdateCommand(this.studentRepository){
    argParser.addOption('file', help: 'Path of the csv file', abbr: 'f');
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }

  @override
  Future<void> run() async {
    print('Aguarde...');
    final filePath = argResults?['file'];
    final id = argResults?['id'];

    if(id == null){
      print('por favor informe o id do aluno com o comando --id=? ou -i ?');
      return;
    }
    final students = File(filePath).readAsLinesSync();
    print('Aguarde, atualizado dados do aluno...');
    print('------------------------');

    if(students.length > 1){
      print('Por favor, informe somente um aluno no arquivo $filePath');
      return;
    }else if(students.isEmpty){
      print('Por favor, informe um aluno no arquivo $filePath');
      return;
    }

      var student = students.first;

    
      final studentData = student.split(';');
      final courseCsv = studentData[2].split(',').map((e) => e.trim()).toList();
      
      final coursesFutures = courseCsv.map((c) async {
        final course = await productRepository.findByName(c); 
        course.isStudent = true;
        return course; 
      }).toList();

      final courses = await Future.wait(coursesFutures); 

      final studentModel = Student(
        id: int.parse(id),
        name: studentData[0], 
        age: int.tryParse(studentData[1]),
        nameCourses: courseCsv, 
        courses: courses, 
        address: Address(
          street: studentData[3], 
          number: int.parse(studentData[4]), 
          zipCode: studentData[5], 
          city: City(
            id: 1,
            name: studentData[6]
          ), 
          phone: Phone(
            ddd: int.parse(studentData[7]), 
            phone: studentData[8]
          ),
        ),
      );

      await studentRepository.update(studentModel);

      print('-----------------------------------');
      print('Aluno atualizado com sucesso');
    
  }
   
}