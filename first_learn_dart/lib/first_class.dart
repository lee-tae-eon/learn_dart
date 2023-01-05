// // class에서 변수를 선언할 때는 type을 지정해야한다.
// class Player {
//   // * late로 초기 변수 없이 생성
//   // late String name;
//   // late int xp;
//   final String name;
//   int xp, age;
//   String team;

//   // * constructor 생성 -
//   // * constructor 는 class의 이름과 같아야 한다.
//   // * https://dart-lang.github.io/linter/lints/prefer_initializing_formals.html
//   // * 가능한 경우 초기화 형식을 사용하라고 나와있다.
//   // * Player(String name, int xp) {
//   // * this.name = name;
//   // * this.xp = xp;
//   // * };

//   // * named argument constructor
//   Player(
//       {required this.name,
//       required this.xp,
//       required this.team,
//       required this.age});

//   Player.createBluePlayer({required this.name, required this.age})
//       : team = "blue",
//         xp = 0;

//   Player.createRedPlayer({required this.name, required this.age})
//       : team = "red",
//         xp = 0;

//   void sayHello() {
//     // *안에 선언한 변수를 바로 쓸 수 있다 this를 써도 무방하지만 class method 내에서의 this는 사용하지 않는 것을 권고한다.
//     // * method 안에 같은 이름의 변수가 있어서 어쩔 수 없이 this를 사용하는게 아닌이상 사용하지 않는 것이 권장사항이다.
//     print("hello $age $name, you are $team team and  your team point is $xp");
//   }
// }

// void main() {
//   // * new를 써도 되지만 안써도 무방하다.
//   var player = Player.createRedPlayer(name: "taeeon", age: 12);
//   player.sayHello();
//   var player2 = Player.createBluePlayer(name: "woo", age: 32);
//   player2.sayHello();

//   // -------------------------- named constructor parameters
// }

// ------------------ recap

class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("hello my name is $name $xp $team");
  }
}

void main() {
  var apiData = [
    {
      "name": "nico",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lee",
      "team": "blue",
      "xp": 0,
    },
    {
      "name": "woo",
      "team": "yelllow",
      "xp": 0,
    }
  ];

  for (var playerJson in apiData) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  }
}
