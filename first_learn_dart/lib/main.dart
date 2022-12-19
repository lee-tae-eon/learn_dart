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
}
