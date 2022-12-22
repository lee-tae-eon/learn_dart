void main() {
  // Basic type ----------------------------------
  // * dart의 모든 type은 object로 이루어져있다.
  // * dart는 객체지향형 프로그래밍
  String name = "taeeon";
  bool alive = true;
  int age = 12;
  double money = 33.33;
  // * num type은 integer 또는 double 타입 일 수 있다.
  num x = 12;

  // List type ------------------------

  // List<int> numbers = [1, 2, 3, 4, 5];
  // numbers.add(1);
  // print(numbers);
  // for (var element in numbers) {
  //   print(element);
  // }
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  // * collection if - 조건에 따라 list에 넣거나 빼거나 가능;
  print(numbers);
  giveMeFive = false;
  print(numbers);

  // String interpolation - text에 변수 추가하기.
  //* javascript에 template literal과 비슷한 역할이다. "$" 뒤에 변수를 추가해주면 된다.
  // * 이미 변수에 값이 존재할때 가능.
  // * 해당 변수만 사용할때는 그냥 $변수명 이지만 opreation이 필요하거나  변형을 할때는  ${}로 감싸준다.
  String text = "test";
  var ages = 20;
  var greeting = "hello every one, my name is $text, i am ${ages + 2}";
  print(greeting);

  // ----- collection for -------------------------
  var oldMan = ["test", "test2", "test3"];
  var newMan = ["123", "345", "648", for (var friend in oldMan) "love $friend"];
  print(newMan);
}
