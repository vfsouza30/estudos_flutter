

import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/product_dio_repository.dart';
import '../../../repositories/student_dio_repository.dart';
//import '../../../repositories/student_repository.dart';
//import '../../../repositories/product_repository.dart';
import '../../../models/address.dart';
import '../../../models/city.dart';
import '../../../models/phone.dart';
import '../../../models/student.dart';

class InsertCommand extends Command{

  final StudentDioRepository studentRepository;
  final ProductDioRepository productRepository;
  
  @override
  // TODO: implement description
  String get description => 'Insert Student';
  
  @override
  // TODO: implement name
  String get name => 'insert';

  InsertCommand(this.studentRepository) : productRepository = ProductDioRepository(){
    argParser.addOption('file', help: 'Path of the csv file', abbr: 'f');
  }

  @override
  Future<void> run() async {
    print('Aguarde...');
    final filePath = argResults?['file'];
    final students = File(filePath).readAsLinesSync();
    print('------------------------');

    for (var student in students) {
      final studentData = student.split(';');
      final courseCsv = studentData[2].split(',').map((e) => e.trim()).toList();
      
      final coursesFutures = courseCsv.map((c) async {
        final course = await productRepository.findByName(c); 
        course.isStudent = true;
        return course; 
      }).toList();

      final courses = await Future.wait(coursesFutures); 

      final studentModel = Student(
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

      await studentRepository.insert(studentModel);

      print('-----------------------------------');
      print('Alunos adicionados com sucesso');
    }
  }
  
}
