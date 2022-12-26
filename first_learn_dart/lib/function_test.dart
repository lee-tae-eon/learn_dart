// * 일반적인 function define
// String sayHello(String name) {
//   print("Hello $name come here");
//   return name;
// }
// * implicit return
// String sayHello(String name) => name;

// * named parameter
// * nullable or default value 지정
String sayHi({String name = "", int age = 0, String country = "korea"}) {
  return "hello $name, are you $age? and from $country ?";
}

void main() {
  var test = sayHi(age: 12, name: "lee", country: "korea");
  print(test);
  // ---------- named parameters
  // * dart function은 named parameter 를 provide > flutter
}
