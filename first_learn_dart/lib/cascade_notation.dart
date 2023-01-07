class Player {
  String name, team;
  int xp;

  Player({required this.name, required this.xp, required this.team});

  void sayhello() {
    print("hello my nam is $name, my team is $team and they have $xp");
  }
}

void main() {
  // cascade notation operator
  var taeeon = Player(name: "taeeon", xp: 13, team: "woo team")
    ..name = "woo"
    ..xp = 23
    ..team = "3333"
    ..sayhello();

  taeeon.sayhello();
}
