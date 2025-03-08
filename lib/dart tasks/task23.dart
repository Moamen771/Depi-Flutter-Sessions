/*
*
* Task 23
*
*/

class Person {
  String? name;
  int? age;
  String? id;

  Person({required this.name, required this.age, required this.id});

  void displayInfo() {
    print('Name is $name , Age is $age , ID is $id');
  }
}

class Student extends Person {
  double? gpa;

  Student({
    required super.name,
    required super.age,
    required super.id,
    required this.gpa,
  });

  @override
  void displayInfo() {
    print('Student $id : \nName :$name , Age: $age , GPA: $gpa');
  }
}

class Instructor extends Person {
  double? salary;

  Instructor({
    required super.name,
    required super.age,
    required super.id,
    required this.salary,
  });

  @override
  void displayInfo() {
    print(
        'Instructor $id :\n Name is $name , Age is $age  , Salary is $salary');
  }
}

class Course {
  String? courseName;
  Instructor? instructorName;
  List<Student> students = [];

  Course({
    required this.courseName,
    required this.instructorName,
  });

  void addStudent(Student student) {
    students.add(student);
  }

  void displayStudents() {
    print('Enrolled Students :');
    for (int index = 0; index < students.length; index++) {
      students[index].displayInfo();
    }
  }
}

void main() {
  Instructor instructor =
      Instructor(name: 'Mahmoud', age: 26, id: '1', salary: 19500);
  instructor.displayInfo();
  print('-----------------------------');

  Student student1 = Student(name: 'Moamen', age: 22, id: '1', gpa: 3.2);
  Student student2 = Student(name: 'Omar', age: 22, id: '2', gpa: 3.0);

  Course course = Course(courseName: 'Flutter', instructorName: instructor);

  course.addStudent(student1);
  course.addStudent(student2);
  course.addStudent(Student(name: 'Khalid', age: 21, id: '3', gpa: 3.1));
  course.addStudent(Student(name: 'Nour', age: 21, id: '4', gpa: 3.19));
  course.displayStudents();
}
