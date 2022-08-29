// void main() {
//   var student = {};
//   student['name'] = 'Paijo';
//   student['age'] = 18;
//   print(student);

//   print(student['name']);
//   print(student['age']);
// }

void main() {
  var student = {
    'name': 'Paijo',
    'age': 18,
  };
  print(student);

  for (var key in student.keys) {
    print(student[key]);
  }
}
