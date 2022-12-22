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
}
