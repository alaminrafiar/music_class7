void main() {
  Dog dog = Dog('Black');
  //dog.breed = 'Labrador';
  dog.color = 'Black';
  dog.bark();
  dog.eat();
}

class Animal {
  // BASE / PARENT / SUPER CLASS // A
  String? color;

  Animal(this.color) {
    print('Animal constructor called $color');
  }

  void eat() {
    print('Animal is eating $color');
  }
}

class Dog extends Animal {
  // SUB / CHILD CLASS  // B
  String? breed;
  String? color;

  Dog(this.color) : super(color) {
    print('Dog constructor called $color');
  }

  @override
  void eat() {
    super.eat();
    print('Dog is eating');
  }

  void bark() {
    print('Bark');
  }
}
