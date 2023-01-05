class Player {
  final String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void sayhello() {
    print("hello my nam is $name, my team is $team and they have $xp");
  }
}

void main() {}
