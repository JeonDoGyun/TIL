// HelloSwift

print("Hello, Swift!")

// syntax errors in swift
// Syntax란?? 프로그래밍 언어의 구조를 정의하는 규칙
// 명령하는 함수의 경우, 항상 소문자로 시작

// variables
var length = 3
// var : 변수 생성 키워드
// ex) 길이가 3인 정사각형의 넓이
var area = length * length
print(area)

var perimeter = length + length + length + length
print(perimeter)

length = 5 // var 키워드는 선언할 때만 사용. 값 변경할 때는 사용 안함.
print(length)

// var : 데이터 저장소. 식별 이름으로 값을 저장하고 참조.
// 변수에 값을 할당하기 위해선 할당 연산자가 필요.

var x = 5
var y = 9
var z = x + y
print(z)

length = 12
var width = 7
area = length * width
print(area)