// * 일반적인 function define
// String sayHello(String name) {
//   print("Hello $name come here");
//   return name;
// }
// * implicit return
// String sayHello(String name) => name;

// * named parameter
// * required or default value 지정
// String sayHi({String name = "", int age = 0, String country = "korea"}) {
String sayHi(
    {required String name, required int age, required String country}) {
  return "hello $name, are you $age? and from $country ?";
}

// * optional parameters
String sayHello(String name, int age, [String? country = ""]) {
  return "Hello $name $age $country";
}

// * ?? = nullish operator and ??= operator
String capitalizeName(String? name) => name?.toUpperCase() ?? "anon";

// * Typedef 타입 정의
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi2(UserInfo userInfo) {
  return "hi ${userInfo['name']}";
}

void main() {
  var test = sayHi(age: 12, name: "lee", country: "korea");
  print(test);
  // ---------- named parameters
  // * dart function은 named parameter 를 provide > flutter

  // ------------- optional parameters
  // * 순서에 맞게 입력
  // * parameter 를 []로 감싸서 선언
  print(sayHello("optional", 23));

  // ------------ double question mark operator < ?? > and question equal mark operator < ?= >
  capitalizeName("operator");
  String? name;
  // * name 이 null이면 오른쪽 피연산자 를 할당한다.
  name ??= "nico";

  // ---------------- Typedef
  // * 자료형이 헷갈리 때 도움이 되는 alias를 만드는 방법
  print(reverseListOfNumbers([1, 2, 3]));
  print(sayHi2({"name": "nico"}));
}
