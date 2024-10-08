import 'package:args/command_runner.dart';

import '../../repositories/student_dio_repository.dart';
//import '../../repositories/student_repository.dart';
import 'subcommands/delete_command.dart';
import 'subcommands/find_all_command.dart';
import 'subcommands/find_by_id_command.dart';
import 'subcommands/insert_command.dart';
import 'subcommands/update_command.dart';

class StudentsCommand extends Command {
  @override
  // TODO: implement description
  String get description => 'Students Operations';

  @override
  // TODO: implement name
  String get name => 'students';

  StudentsCommand(){
    final studentRepository = StudentDioRepository();
    addSubcommand(FindAllCommand(studentRepository));
    addSubcommand(FindByIdCommand(studentRepository));
    addSubcommand(InsertCommand(studentRepository));
    addSubcommand(UpdateCommand(studentRepository));
    addSubcommand(DeleteCommand(studentRepository));
  }

}