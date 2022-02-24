import 'usersmodel.dart';
import 'dart:io';

users() {
  List users = [];

  return users;
}

void AddUser(userlist, user_id, user_name, user_age, user_faculty) {
  userlist.add(new usersdata(user_id, user_name, user_age, user_faculty));
}

DeleteUSer(userlist, int id) {
  userlist.removeWhere((item) => item.id == id);
}

DisplayUsers(userlist) {
  // userlist.map((n) => 'Mr. ${n.firstName} ${n.lastName}');
  var mappedlst = userlist.map((n) =>
      'id: ${n.id} ,name: ${n.name} ,age: ${n.age} ,Faculty: ${n.faculty}');
  mappedlst.forEach((n) => print(n));
}

ask() {
  print("welcome to our management system");
  print('choose what do u want.');
  print('1 - add member to users.');
  print('2 - remove member from users by id.');
  print('3 - display members.');

  int result = int.parse(stdin.readLineSync()!) as int;
  return result;
}
