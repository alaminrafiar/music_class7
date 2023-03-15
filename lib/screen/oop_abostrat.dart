void main(){
  //Shape shape = Shape(); // Can not instantiate Abstract Class

  Rectangle rectangle = Rectangle();
  rectangle.draw();


}
abstract class Shape{
  void draw(); // Abstract Method
}
class Rectangle extends Shape{
  @override
  void draw() {
    print('Drawing Rectangle....');
  }
}

class Circle extends Shape{
  @override
  void draw() {
    print('Drawing Circle....');
  }
}
