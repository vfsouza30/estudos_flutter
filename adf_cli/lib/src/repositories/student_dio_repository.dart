// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

import '../models/student.dart';

class StudentDioRepository{

  final String uri = 'http://localhost:8080/';

  Future<List<Student>> findAll() async {

   final studentsResult = await Dio().get('${uri}students');

    try {

      return studentsResult.data.map<Student>((student) {
        return Student.fromMap(student);

      }).toList();
    } on Dio {
      throw Exception();
    }
  }

  Future<Student> findById(int id) async {

    final studentResult = await Dio().get('${uri}students/$id');

    try {
      
      if(studentResult.data == null){
        throw Exception('Aluno não encontrado');
      }

      return Student.fromMap(studentResult.data);
    } on Dio catch (e){
      print(e);
      throw Exception();
    }
    

  }

  Future<void> insert(Student student) async {

    try {
      await Dio().post('${uri}students', data: student.toMap());
    } on DioError catch (e) {
      print(e);
      throw Exception();
    }

  }

  Future<void> update(Student student) async {

    try {
      await Dio().put('${uri}students/${student.id}',data: student.toMap());
    } on DioError catch (e) {
      print(e);
      throw Exception();
    }

  }

  Future<void> deleteById(int id) async {

    try {
      await Dio().delete('${uri}students/$id');
    } on DioError catch (e) {
      print(e);
      throw Exception();
    }

  }
  
}