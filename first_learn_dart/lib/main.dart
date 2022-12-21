// * main에서 코드가 호출된다.

void main() {
  // ------------- variable -------------------------------

  // * 변수를 선언 하고 타입은 따로 지정하지 않아도 다트가 자동으로 인식
  // * 변수를 변경할때는 같은 타입으로만 가능;
  var name = "taeeon";
  // * implicit으로 타입지정도 가능하다
  String second = "taeeon";

  // * 관습적으로 함수나 메소드 내부에서 local variable을 선언 할때는 var를 사용
  // * class의 변수나 property를 선언할 때에는 타입을 지정해 준다.

  // ------------- dynamic type -------------------------------
  dynamic name2;
  // * dynamic type을 이용시 해당 타입에 대한 method를 이용하려면 type check가 이루어져야 한다.
  // * dynamic 이 사용되는 것은 권장되지는 않는다. 꼭 필요한 경우에만 쓸것.
  if (name2 is String) {}

  // ------------- null safety ------------------------------
  // * null safety 란 개발자가 null 값을 참조할 수 없도록 하는 것
  // * 변수 선언시 nullable 표시는 => ? 를 표기해주면 된다.
  String? taeeon = "taeeon";
  taeeon = null;
  if (taeeon != null) print(taeeon.length);
  taeeon?.isEmpty; // * javascript의 optional chainning 같은 역할이다

  // ------------- final variables -------------------
  // * var 대신 final로 변수를 만들게 되면 수정 불가능하다 javascript의 const와 비슷하다
  final String name3 = "te";

  // ------------- late modifier -----------------------
  // * final을 쓸때 late는  초기에 데이터 없이 변수 선언이 가능하다. - 변수를 undefined로 참조하도록?
  late final String name4;
  // do something, after fetch api
  // * 어떤 데이터를 받아오거나 로직 후에 넣어줘야 하는 경우에 선언 후에 참조하도록 변경해주고 한번 값을 참조한 이후로는 변경이 불가능하다.
  name4 = "data";

  late String name5;
  name5 = "test";
  print(name5);
  name5 = "test2";
  print(name5);

  // -------------- constant variables-------------------
  // * const keyword는 javascript의 const와 다른 역할을 한다. javascript의 const 는 dart에서 final과 비슷한 역할이다.
  // * dart에서 const keyword는 compile-time constanst이다. !!
  const api = "something api fetch response";
  // * names = "taeeon"; not allow but should be known at compile-time
  // * 예를 들어 api fetch response를 받는 변수라면 compile time 에서는 알 수 없다 runtime에서 실행 될때 알 수 있다.
  // * api 에서 가져오는 값은 const가 아닌 final 이 되어야 한다.
  // * const로 선언한 변수는 컴파일 할때 이미 알고 있어야 하는 값이어야 한다.
  // * 만약 런타임에서 유저가 주는 input같은 경우 const는 실행 할 수 없다. final or var 가 되어야 함.
}
