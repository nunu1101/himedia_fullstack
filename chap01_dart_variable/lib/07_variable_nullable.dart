void main() {

  // 초기화를 하지 않아도 변수 선언을 할 수 있게 해주는 nullable

  // String = name;

  // 타입 뒤에 ?를 붙여주면 nullable한 변수로 선언이 가능하다.
  String? name;
  print(name);

  // null값을 대입하는 것도 가능하다.
  name = null;

  // 변수의 값이 null 일때만 값을 할당해주는 Null-aware operator
  String? value1;
  String value2 = "not null";

  value1 ??= "null이라 값이 할당됨";

  value2 ??= "null이 아니라서 값이 할당되지 않음";

  print(value1);
  print(value2);
}