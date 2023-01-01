// * class에서 변수를 선언할 때는 type을 지정해야한다.
class Player {
  String name = "taeeon";
  int xp = 1500;
}

void main() {
  // * new를 써도 되지만 안써도 무방하다.
  var player = Player();
  player.name = "some";
  print(player.name);
}
