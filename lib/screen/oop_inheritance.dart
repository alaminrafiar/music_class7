void main() {
  Student student1 =
  Student(24, 'Bobly'); // One Object, student1 is reference variable

  student1.percentage = 480;
  print('${student1.name} and ${student1.id}');
  print('Your Score: ${student1.percentage}');
  student1.study();
  student1.sleep();

}

class Student {
  int? id; // Instance variable or filed variable, default value is null
  String? name; // Instance variable or filed variable, default value is null
  double? _percent;

  Student(this.id, this.name); // Parameterized Constructor

  Student.myCustomConstructor() {
    print('This is my custom named constructor');
  }

  set percentage(double maksSecured) => _percent = (maksSecured / 500) * 100; // instrance variable with custom setter

  double get percentage => _percent!; // instrance variable with custom getter

  void study() {
    int marks; // Local Variable
    print('$name is now studying');
  }

  void sleep() {
    print('$name is now sleeping');
  }
}

