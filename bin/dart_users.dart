import 'dart:io';
import 'users.dart';
import 'usersmodel.dart';

void main(List<String> arguments) {
  List user = [];
  bool askqu = true;
  while (askqu = true) {
    var result = ask();
    if (result == 1) {
      print('enter user id : ');
      int id = int.parse(stdin.readLineSync()!) as int;
      print('enter user name : ');
      String name = stdin.readLineSync() as String;
      print('enter user age : ');
      int age = int.parse(stdin.readLineSync()!) as int;
      print('enter user faculty : ');
      String faculty = stdin.readLineSync() as String;
      AddUser(user, id, name, age, faculty);
      print(
          'Member Created succesfully your id is : $id , name: $name , age: $age , Faculty: $faculty');
      DisplayUsers(user);
      print('do u want to do something else ?   [y,n]');
      String ask = stdin.readLineSync() as String;
      if (ask == "y" || ask == "yes" || ask == "Y " || ask == " YES") {
        askqu = true;
      } else if (ask == "n" || ask == "no" || ask == "N " || ask == " NO") {
        askqu = false;
      }
    } else if (result == 2) {
      print('enter user id : ');
      int id = int.parse(stdin.readLineSync()!) as int;
      DeleteUSer(user, id);
      print('do u want to do something else ?   [y,n]');
      String ask = stdin.readLineSync() as String;
      if (ask == "y" || ask == "yes" || ask == "Y " || ask == " YES") {
        askqu = true;
      } else if (ask == "n" || ask == "no" || ask == "N " || ask == " NO") {
        askqu = false;
      }
    } else if (result == 3) {
      DisplayUsers(user);
      print('do u want to do something else ?   [y,n]');
      String ask = stdin.readLineSync() as String;
      if (ask == "y" || ask == "yes" || ask == "Y " || ask == " YES") {
        askqu = true;
      } else if (ask == "n" || ask == "no" || ask == "N " || ask == " NO") {
        askqu = false;
      }
    } else {
      print("wrong select");
    }
  }
}
