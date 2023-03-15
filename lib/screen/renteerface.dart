void main() {

  Television tv = Television();
  tv.volumeUp();
  tv.volumeDown();

}

class Remote {
  void volumeUp(){
    print('Volume Up from Remote');
  }
  void volumeDown(){
    print('Volume Up Down Remote');
  }
}

// remote acts interface
class Television implements Remote, AnotherClass{

  @override
  void volumeDown() {
    print('Volume Down from Television');
  }
  @override
  void volumeUp() {
    print('Volume Up from Television');
  }

  @override
  void justAnotherMethod() {
  }
}

class AnotherClass {
  void justAnotherMethod(){}
}
