// class에서 변수를 선언할 때는 type을 지정해야한다.
class Player {
  final String name = "taeeon";
  int xp = 1500;

  void sayHello() {
    // *안에 선언한 변수를 바로 쓸 수 있다 this를 써도 무방하지만 class method 내에서의 this는 사용하지 않는 것을 권고한다.
    // * method 안에 같은 이름의 변수가 있어서 어쩔 수 없이 this를 사용하는게 아닌이상 사용하지 않는 것이 권장사항이다.
    print("hello $this.name");
  }
}

void main() {
  // * new를 써도 되지만 안써도 무방하다.
  var player = Player();

  print(player.name);
  player.sayHello();
}
